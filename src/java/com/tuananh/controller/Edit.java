/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuananh.controller;

import com.tuananh.dal.CategoryDAO;
import com.tuananh.dal.MovieDAO;
import com.tuananh.dal.UserDAO;
import com.tuananh.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ngotu
 */
public class Edit extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Edit</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Edit at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        throw new ServletException("GET method used with " + getClass().getName() + ": POST method required.");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String type = request.getParameter("type");
        if (type.equalsIgnoreCase("movie")) {
            int id = Integer.parseInt(request.getParameter("id"));
            String title = request.getParameter("title");
            String overview = request.getParameter("overview");
            String poster = request.getParameter("poster");
            String backdrop = request.getParameter("backdrop");
            float vote_average = Float.parseFloat(request.getParameter("vote_average"));
            int runtime = Integer.parseInt(request.getParameter("runtime"));
            String release_date = request.getParameter("release_date");
            String link = request.getParameter("link");
            String quality = request.getParameter("quality");
            int category = Integer.parseInt(request.getParameter("category"));
            MovieDAO md = new MovieDAO();
            md.updateMovie(id, title, overview, poster, backdrop, vote_average, runtime, release_date, link, quality, category);
            response.sendRedirect("admin/movie-list.jsp");
        }
        if (type.equalsIgnoreCase("category")) {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String des = request.getParameter("des");
            CategoryDAO cd = new CategoryDAO();
            cd.updateCategory(id, name, des);
            response.sendRedirect("admin/category-list.jsp");
        }
        if (type.equalsIgnoreCase("user")) {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String username = request.getParameter("username");
            UserDAO ud = new UserDAO();
            ud.updateUser(id, name, username, email);
            HttpSession session = request.getSession();
            session.setAttribute("user", ud.getUser(id));
            response.sendRedirect("web/user.jsp");
        }
        if (type.equalsIgnoreCase("pass")) {
            int id = Integer.parseInt(request.getParameter("id"));
            String oldpass = request.getParameter("oldpass");
            String newpass = request.getParameter("newpass");
            UserDAO ud = new UserDAO();
            HttpSession session = request.getSession();
            User u = (User) session.getAttribute("user");
            if (ud.checkPass(oldpass, u.getPassword())) {
                String neww = ud.hashPass(newpass);
                ud.updatePass(neww, id);
                session.setAttribute("user", ud.getUser(id));
                response.sendRedirect("web/changepass.jsp");
            } else {
                response.sendRedirect("web/changepass.jsp");
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
