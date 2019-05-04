/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author My Lappy
 */
@WebServlet(urlPatterns = {"/company_record"})
public class company_record extends HttpServlet {

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
           
            
            
            
            /* TODO output your page here. You may use following sample code. */
            
          
          String companyname="";
                   String id="",studentname="",studentrollno="";
             String status="placed";
             
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");
                 String fetchQuery = "select * from interestedstudents where status='"+status+"'";
                    Statement fetchStatement = con.createStatement();
                    ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                     while(rs.next())
                    {
                      companyname=rs.getString("company_name");     
                      id  =rs.getString("id");
                      studentname  =rs.getString("student_name");
                      studentrollno=rs.getString("student_rollno");
                    } 
                      request.setAttribute("companyname",companyname );
                       request.setAttribute("id",id );
                        request.setAttribute("companyname",companyname );
                         request.setAttribute("studentrollno",studentrollno );
             request.getRequestDispatcher("company_record.jsp").forward(request, response);
             response.sendRedirect("company_record.jsp");
        }
        catch(Exception e){
        out.print(e);
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
