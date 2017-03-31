/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import controllerhelper.sendmail;
import dao.membersdao;
import dao.noticedao;
import dao.publicationdao;
import dao.writer_profiledao;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.members;
import model.notice;
import model.publication;
import model.writer_profile;
import org.apache.catalina.connector.Request;
import util.EmailUtility;
import util.RecaptchaJSON;

/**
 *
 * @author YubRaj
 */
@WebServlet(name="MainController",urlPatterns={"/MainController"})
@MultipartConfig
public class MainController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
     private String host;
    private String port;
    private String user;
    private String pass;
    private String recipient;
    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
        recipient=context.getInitParameter("recipient");
    }
 

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
  String page=null;
          page = request.getParameter("page");

    if(page.equalsIgnoreCase("profile"))
    {
        writer_profiledao wdao;
        String id=request.getParameter("id");
        System.out.println(id);
        wdao=new writer_profiledao();
        writer_profile profile=wdao.getdata(id);
        RequestDispatcher rd=request.getRequestDispatcher("pages/profile.jsp");
            request.setAttribute("profile", profile);
            rd.forward(request, response);
        

    }
        if (page.equalsIgnoreCase("hamrobare")){
            RequestDispatcher rd=request.getRequestDispatcher("pages/hamrobare.jsp");
            membersdao mdao=new membersdao();
            List<members> list=mdao.getall();
            
            request.setAttribute("list",list);
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("sahityapuraskar")){
            RequestDispatcher rd=request.getRequestDispatcher("pages/sahityapuraskar.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("developersprofile")){
            RequestDispatcher rd=request.getRequestDispatcher("pages/developersprofile.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("poem")){
            RequestDispatcher rd=request.getRequestDispatcher("pages/poem.jsp");
            publicationdao pdao=new publicationdao();
            List<publication> list=pdao.getByCategory("Poem");
            System.out.println(list);
            request.setAttribute("list", list);
            rd.forward(request, response);
        }
        if(page.equalsIgnoreCase("poemdetail")){
            String id=request.getParameter("id");
            publicationdao pdao=new publicationdao();
            publication pub=pdao.getSelectedPublication(id);
            RequestDispatcher rd=request.getRequestDispatcher("../pages/poemdetail.jsp");
            request.setAttribute("pub",pub);
            rd.forward(request,response);
        }
        if (page.equalsIgnoreCase("essay")){
            RequestDispatcher rd=request.getRequestDispatcher("pages/essay.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("story")){
            RequestDispatcher rd=request.getRequestDispatcher("pages/story.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("kavigosti_2073")){
            RequestDispatcher rd=request.getRequestDispatcher("pages/kavigosti_2073.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("jankari")){
            RequestDispatcher rd=request.getRequestDispatcher("pages/jankari.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("notice")){
           
            RequestDispatcher rd=request.getRequestDispatcher("pages/notice.jsp");
            noticedao ndao=new noticedao();
            List<notice> list=ndao.getall();
            request.setAttribute("list", list);
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("kavigosti_2072")){
            RequestDispatcher rd=request.getRequestDispatcher("pages/kavigosti_2072.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("sendarticle")){
            String msg="";
            request.setAttribute("msg",msg);
            RequestDispatcher rd=request.getRequestDispatcher("pages/sendarticle.jsp");
            rd.forward(request, response);
            
        }
    if(page.equalsIgnoreCase("index"))
    {
        RequestDispatcher rd=request.getRequestDispatcher("pages/index.jsp");
        rd.forward(request, response);
    }
    
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String page=request.getParameter("page");
        if(page.equals("sendarticle"))
        {
            new sendmail().sendmails(request,response,host, port, user, pass,
                                recipient);

    
}
   }
}