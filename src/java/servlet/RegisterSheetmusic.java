/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import entities.Sheetmusic;
import entities.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import persistence.MusicEjb;

/**
 *
 * @author alu2014044
 */
public class RegisterSheetmusic extends HttpServlet {

       @EJB 
    MusicEjb ejb;
      public static final String STATUS_OK = "Partitura Registrada";
     public static final String STATUS_ERROR = "ERROR";
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
      
        String title = request.getParameter("title");
        String artist = request.getParameter("artist");
        String instrument = request.getParameter("instrument");
        String genre = request.getParameter("genre");
        String difficulty = request.getParameter("difficulty");

        User owner =(User) request.getSession(true).getAttribute("usuario");
        Sheetmusic sheetmusic = new Sheetmusic(null, title, artist, instrument, genre, difficulty, true);
        sheetmusic.setOwner(owner);
        
        try {
            
            ejb.insertSheetmusic(sheetmusic);
             request.setAttribute("status", STATUS_OK);
        } catch (Exception e) {
            request.setAttribute("status", STATUS_ERROR);
        }
        
         request.getRequestDispatcher("/userPage.jsp").forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
