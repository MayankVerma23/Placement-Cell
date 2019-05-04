/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.sun.xml.wss.saml.internal.saml11.jaxb10.ConfirmationMethod;
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
@WebServlet(urlPatterns = {"/studentsignup"})
public class studentsignup extends HttpServlet {

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
             String roll = request.getParameter("roll");
             String email = request.getParameter("email");
             String degree = request.getParameter("degree");
             String phoneno = request.getParameter("phoneno");
             String gender = request.getParameter("gender");
             String branch = request.getParameter("branch");
             String batch = request.getParameter("batch");
             String ten = request.getParameter("ten");
             String twe = request.getParameter("twe");
             String sem1 = request.getParameter("sem1");
             String sem2 = request.getParameter("sem2");
             String sem3 = request.getParameter("sem3");
             String sem4 = request.getParameter("sem4");
             String sem5 = request.getParameter("sem5");
             String sem6 = request.getParameter("sem6");
             String sem7 = request.getParameter("sem7");
             String sem8 = request.getParameter("sem8");
             String cgpa = request.getParameter("cgpa");
             String pass = request.getParameter("pass");
           
          
             String rollno="";
              String ea="";
             
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");
             Statement stmt=con.createStatement();
             String y="select * from studentsignup where studentrollno='"+rollno+"' ";
             ResultSet rs=stmt.executeQuery(y);
             while(rs.next())
             {
                 rollno=rs.getString("studentrollno");
                 ea=rs.getString("studentemail");
             }
            
         if(!roll.equals(rollno)) {
            String x="insert into studentsignup values(null,'"+name+"','"+roll+"','"+email+"','"+degree+"','"+phoneno+"','"+gender+"','"+branch+"','"+batch+"','"+ten+"','"+twe+"','"+sem1+"','"+sem2+"','"+sem3+"','"+sem4+"','"+sem5+"','"+sem6+"','"+sem7+"','"+sem8+"','"+cgpa+"','"+pass+"','"+"unplaced"+"')";
             stmt.executeUpdate(x);  
             request.setAttribute("roll", roll);
             request.getRequestDispatcher("image_studentt.jsp").forward(request, response);
             response.sendRedirect("image_studentt.jsp");
               
             }
          else{
               out.print("<script> window.alert('RollNo Already Use Please Select Another RollNo') </script>");
               out.print("<script> window.location.href='registration_student.jsp' </script>");
                         
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
