/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllerhelper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import util.EmailUtility;
import util.RecaptchaJSON;

/**
 *
 * @author YubRaj
 */
public class sendmail {

    public void sendmails(HttpServletRequest request, HttpServletResponse response,String host, String port,String user,String pass, String recipient) throws IOException, ServletException{
    
                    String msg = "";
            // get reCAPTCHA request param
		String gRecaptchaResponse = request
				.getParameter("g-recaptcha-response");
		System.out.println(gRecaptchaResponse);
		boolean verify = RecaptchaJSON.verify(gRecaptchaResponse);
                System.out.println(verify);
                if (!verify){
                msg="Please the tick box below I'm not robot";
                System.out.println(msg);
                RequestDispatcher rd=request.getRequestDispatcher("pages/sendarticle.jsp");
                request.setAttribute("msg", msg);
                rd.forward(request, response);
                }
                else
                {
                    List<File> uploadedFiles = saveUploadedFiles(request);
                    String fullname=request.getParameter("fullname");
                    String address=request.getParameter("address");
                    String course=request.getParameter("course");
                    String category=request.getParameter("category");
                    String title=request.getParameter("title");
                    String phone=request.getParameter("phone");
                    String emailid=request.getParameter("emailid");
                    String comments=request.getParameter("comments");
                    String subject = "Title: "+title+"   Category:"+category;
                    String content = "Name:"+fullname+
                                     "Address:"+address+
                                     "Course:"+course+
                                     "Phone:"+phone+
                                     "Email:"+emailid+
                                     "Comment:"+comments;

                   
                    System.out.println(subject + content);

                    try {
                        EmailUtility.sendEmailWithAttachment(host, port, user, pass,
                                recipient, subject, content, uploadedFiles);

                        msg = "The e-mail was sent successfully";
                    } catch (Exception ex) {
                        ex.printStackTrace();
                        msg = "There were an error: " + ex.getMessage();
                    } finally {
                        deleteUploadFiles(uploadedFiles);
                        request.setAttribute("msg", msg);
                        RequestDispatcher rd=request.getRequestDispatcher("pages/sendarticle.jsp");
                        rd.forward(request, response);
                }
        }
    }

  private List<File> saveUploadedFiles(HttpServletRequest request)
            throws IllegalStateException, IOException, ServletException {
        List<File> listFiles = new ArrayList<File>();
        byte[] buffer = new byte[4096];
        int bytesRead = -1;
        Collection<Part> multiparts = request.getParts();
        if (multiparts.size() > 0) {
            for (Part part : request.getParts()) {
                // creates a file to be saved
                String fileName = extractFileName(part);
                if (fileName == null || fileName.equals("")) {
                    // not attachment part, continue
                    continue;
                }
                 
                File saveFile = new File(fileName);
                System.out.println("saveFile: " + saveFile.getAbsolutePath());
                FileOutputStream outputStream = new FileOutputStream(saveFile);
                 
                // saves uploaded file
                InputStream inputStream = part.getInputStream();
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
                outputStream.close();
                inputStream.close();
                 
                listFiles.add(saveFile);
            }
        }
        return listFiles;
    }
 
    /**
     * Retrieves file name of a upload part from its HTTP header
     */
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return null;
    }
     
    /**
     * Deletes all uploaded files, should be called after the e-mail was sent.
     */
    private void deleteUploadFiles(List<File> listFiles) {
        if (listFiles != null && listFiles.size() > 0) {
            for (File aFile : listFiles) {
                aFile.delete();
            }
        }
    }
}
