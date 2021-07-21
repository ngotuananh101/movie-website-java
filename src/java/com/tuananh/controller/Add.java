/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuananh.controller;

import com.tuananh.api.imgur.imgurUploader;
import com.tuananh.api.tmdb.tmdbGetCategory;
import com.tuananh.api.tmdb.tmdbGetMovieById;
import com.tuananh.api.tmdb.tmdbJson;
import com.tuananh.dal.CategoryDAO;
import com.tuananh.dal.LiveTvDAO;
import com.tuananh.dal.MovieDAO;
import com.tuananh.model.Category;
import com.tuananh.model.LiveTV;
import com.tuananh.model.Movie;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.net.ftp.FTPClient;

/**
 *
 * @author ngotu
 */
@MultipartConfig
public class Add extends HttpServlet {
    private final static Logger LOGGER = Logger.getLogger(Add.class.getCanonicalName());
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
            out.println("<title>Servlet Add</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Add at " + request.getContextPath() + "</h1>");
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
        
        String type = request.getParameter("type");
        if (type.equalsIgnoreCase("importcategory")) {
            try {
                CategoryDAO cd = new CategoryDAO();
                String json = tmdbGetCategory.getCategory();
                List<Category> listca = tmdbJson.category(json);
                for (int i = 0; i < listca.size(); i++) {
                    int id = listca.get(i).getId();
                    String name = listca.get(i).getName();
                    String des = listca.get(i).getDes();
                    cd.importCategory(id, name, des);
                }
            } catch (Exception e) {
                LOGGER.log(Level.INFO, "Import Category Error !!!");
            }
            response.sendRedirect("admin/category-list.jsp");
        }
        
        else throw new ServletException("GET method used with " + getClass().getName() + ": POST method required.");
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
        if (type.equalsIgnoreCase("category")) {
            String name = request.getParameter("name");
            String des = request.getParameter("des");
            try {
                CategoryDAO cd = new CategoryDAO();
                cd.addCategory(name, des);
            } catch (Exception e) {
            }
            response.sendRedirect("admin/add-category.jsp");
        }
        
        if (type.equalsIgnoreCase("movie")) {
            FTPClient client = new FTPClient();
            FileInputStream fis = null;
            String tmdbid = request.getParameter("tmdbid");
            int id = Integer.parseInt(tmdbid);
            try {
                MovieDAO md = new MovieDAO();
                String ison = tmdbGetMovieById.getMovieData(id);
                Movie movie = tmdbJson.movie(ison);
                md.addMovie(movie);
            } catch (Exception e) {
            }
            response.sendRedirect("admin/add-movie2.jsp");
        }
        
        if (type.equalsIgnoreCase("movie2")) {
            String tmdbid = request.getParameter("tmdbid");
            int id = Integer.parseInt(tmdbid);
            try {
                MovieDAO md = new MovieDAO();
                String json = tmdbGetMovieById.getMovieData(id);
                Movie movie = tmdbJson.movie(json);
                md.addMovie(movie);
            } catch (Exception e) {
                LOGGER.log(Level.INFO, "Add movie by TMDB error !!!");
            }
            response.sendRedirect("admin/add-movie2.jsp");
        }
        if (type.equalsIgnoreCase("livetv")) {
            try {
                final Part filePart = request.getPart("file");
                imgurUploader iu = new imgurUploader();
                String image = iu.uploadAndGetLink(filePart);
                String title = request.getParameter("title");
                String des = request.getParameter("des");
                String link = request.getParameter("link");
                LiveTV lt = new LiveTV(title, image, des, link);
                LiveTvDAO ltd = new LiveTvDAO();
                ltd.addChannel(lt);
                LOGGER.log(Level.INFO, "Add live tv Success: {0}", title);
            } catch (IOException | ServletException e) {
                LOGGER.log(Level.INFO, "Add live tv Error : {0}", e.getMessage());
            }
            response.sendRedirect("admin/add-tv-channel.jsp");
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
