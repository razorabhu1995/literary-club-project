/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import dao.membersdao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.members;

/**
 *
 * @author YubRaj
 */
public class AdminController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String page=null;
          page = request.getParameter("page");
        if (page.equalsIgnoreCase("login")){
            RequestDispatcher rd=request.getRequestDispatcher("../admin/login.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("error")){
            RequestDispatcher rd=request.getRequestDispatcher("../admin/error.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("index")){
            RequestDispatcher rd=request.getRequestDispatcher("../admin/index.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("hamrobare")){
            RequestDispatcher rd=request.getRequestDispatcher("../admin/adminhamrobare.jsp");
            membersdao mdao=new membersdao();
            List<members> list=mdao.getall();
            request.setAttribute("list",list);
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("hamrobareedit")){
            RequestDispatcher rd=request.getRequestDispatcher("../admin/adminhamrobareedit.jsp");
            membersdao mdao=new membersdao();
            String id=request.getParameter("id");
            members m=mdao.getsingledata(id);
            System.out.println(m.getId());
            request.setAttribute("members",m);
            rd.forward(request, response);
        }

        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String page=request.getParameter("page");
            if (page.equalsIgnoreCase("hamrobareedit")){
                System.out.println("hello");
            RequestDispatcher rd=request.getRequestDispatcher("../admin/adminhamrobare.jsp");
            members m=new members();
            m.setId(request.getParameter("id"));
            m.setAddress(request.getParameter("address"));
            m.setDescription(request.getParameter("description"));
            m.setEmail(request.getParameter("email"));
            m.setPost(request.getParameter("post"));
            m.setImagesrc(request.getParameter("imagesrc"));
            membersdao mdao=new membersdao();
            boolean status=mdao.update(m);
            rd.forward(request, response);
        }


    }

}
