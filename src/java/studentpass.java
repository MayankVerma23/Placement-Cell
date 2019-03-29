/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author HP
 */
@WebServlet(urlPatterns = {"/studentpass"})
public class studentpass extends HttpServlet {

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
         String oldpass =request.getParameter("old_pass");
         String newpass =request.getParameter("new_pass");
         String confirmpass =request.getParameter("confirm_pass");
         
         HttpSession hs=request.getSession();
         String rollno= hs.getAttribute("stu_roll").toString();
          
         String stupass="";
         try{
         Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");
             Statement stmt=con.createStatement();
             String x="select * from studentsignup where studentrollno='"+rollno+"'";
         ResultSet rs=stmt.executeQuery(x);
          while(rs.next())
          {          
            stupass=rs.getString("studentpassword");
          
          }
              
          if(oldpass.equals(stupass))
          {
            if(newpass.equals(confirmpass))
            {
                String y="update studentsignup set studentpassword='"+newpass+"' where studentrollno='"+rollno+"'";
                stmt.executeUpdate(y);
                response.sendRedirect("home_student.jsp");
            }
            else{
            out.print("<script>alert('new password & confirm password must match')</script>");
                }
          }
          else {
            out.print("<script>alert('enter correct password')</script>");
                }
        }
        catch(Exception e)
        {
        out.print(e);
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
