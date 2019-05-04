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
@WebServlet(urlPatterns = {"/companysignup"})
public class companysignup extends HttpServlet {

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
          
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phoneno = request.getParameter("phoneno");
            String loc = request.getParameter("loc");
            String pass = request.getParameter("pass");
            String confpass = request.getParameter("confpass");
            String status = "waiting";
            String em="";
              
                  
                   
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");
             Statement stmt=con.createStatement();
             String y="select * from companysignup where companyemail='"+email+"'";
             ResultSet rs=stmt.executeQuery(y);
             while(rs.next())
             {
                 em=rs.getString("companyemail");
             }
             if(!email.equals(em)) {
             String x="insert into companysignup values(null,'"+name+"','"+email+"','"+phoneno+"','"+loc+"','"+pass+"','"+status+"')";
             stmt.executeUpdate(x);           
          //   request.setAttribute("email", email);
             //request.getRequestDispatcher("login.jsp").forward(request, response);
             response.sendRedirect("login_page.jsp");
         }
              else{
              out.print("<script> window.alert('Email Already Use Please Select Another Email') </script>");
              out.print("<script> window.location.href='login_page.jsp' </script>");
                 
                  }
         }
         
         catch(Exception ex)
         {
           out.print(ex);
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
