/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author My Lappy
 */
@WebServlet(urlPatterns = {"/logout"})
public class logout extends HttpServlet {

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
            String b="";
            HttpSession hs=request.getSession();
            b=(String)hs.getAttribute("log");
           
            
            if(b.equals("student")){ 
                hs.setAttribute("stu_roll", null);
                hs.removeAttribute("stu_roll");
                hs.setAttribute("student", null);
                hs.removeAttribute("student");
                hs.invalidate();
                response.sendRedirect("index.jsp");   
            }
            
            else if(b.equals("tpo"))
            {       
                hs.setAttribute("tpo_name", null);
                hs.removeAttribute("tpo_name");
                hs.setAttribute("tpo", null);
                hs.removeAttribute("tpo");
                hs.invalidate();
                response.sendRedirect("index.jsp");   
            }
            
            else if(b.equals("company")){
                hs.setAttribute("company_name", null);
                hs.removeAttribute("company_name");
                hs.setAttribute("company_email", null);
                hs.removeAttribute("company_email");
                hs.setAttribute("company_phno", null);
                hs.removeAttribute("company_phno");
                hs.setAttribute("company_location", null);
                hs.removeAttribute("company_location");
                hs.setAttribute("company_status", null);
                hs.removeAttribute("company_status");
                hs.setAttribute("company", null);
                hs.removeAttribute("company");
                hs.invalidate();
                response.sendRedirect("index.jsp"); 
             }
            
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
