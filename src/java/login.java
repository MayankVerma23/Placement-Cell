/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import static java.awt.SystemColor.window;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
@WebServlet(urlPatterns = {"/login"})
public class login extends HttpServlet {

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
             String e="";
        HttpSession hs=request.getSession();
        e=(String)hs.getAttribute("log");
           
   
             
         if(e.equals("student")){ 
         String rollnoo=request.getParameter("roll");
         String studentpass=request.getParameter("pass");
         String sturoll="",stupass="";
      
         try
       {
           
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
        Statement stmt=con.createStatement();
        String x="select * from studentsignup where studentrollno='"+rollnoo+"' and studentpassword='"+studentpass+"'";
        ResultSet  rs=stmt.executeQuery(x);
             while(rs.next())
                 {      
                     sturoll=rs.getString("studentrollno");
                     stupass=rs.getString("studentpassword");
                 }
                 if(rollnoo.equals(sturoll)&&studentpass.equals(stupass))
                 {
                     hs.setAttribute("stu_roll",sturoll);
                     response.sendRedirect("home_student.jsp");
                 }
                 else
                 {
                   out.print("<script>alert('Wrong Id or Password')</script>");
                   response.sendRedirect("login_student.jsp");
                 }
            }
         
       
       catch(Exception ex)
       {
           out.print(ex);
       }
    }
         
    else if(e.equals("tpo"))
    {
         
         String tponame=request.getParameter("name");
         String tpopass=request.getParameter("pass");
         String tpo_username="",tpo_password="";
         
         try
        {
             
      
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
        Statement stmt=con.createStatement();
        String x="select * from tpo_password where username='"+tponame+"'";
        ResultSet rs=stmt.executeQuery(x);
          while(rs.next())
          {      
              tpo_username=rs.getString("username");
              tpo_password=rs.getString("password");
          }
      
                if(tponame.equals(tpo_username) && tpopass.equals(tpo_password))
                {
                    HttpSession tpo=request.getSession();
                    tpo.setAttribute("tpo_name",tponame);
                    
                        response.sendRedirect("home_tpo.jsp");
                }
        
                else
                {
                        out.print("<script>alert('Wrong Id or Password')</script>");
                        response.sendRedirect("login_tpo.jsp");
                }
        
         
       }
       catch(Exception ex)
       {
           out.print(ex);
       }
      
   }
         
        
         
        else{
             
            String company_email=request.getParameter("email");
            String pass=request.getParameter("pass");
            String companyname="",companemail="",companyphno="",companylocation="",companypass="",companystatus="";
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
        Statement stmt=con.createStatement();
          String x="select * from companysignup where companyemail='"+company_email+"'and companyPassword='"+pass+"'";
          ResultSet rs=stmt.executeQuery(x);
          while(rs.next())
          {
              companyname=rs.getString("companyname");
              companemail=rs.getString("companyemail");
              companyphno=rs.getString("companyphno");
              companylocation=rs.getString("companylocation");
              companypass=rs.getString("companyPassword"); 
              companystatus=rs.getString("status"); 
          }
          if(company_email.equals(companemail)&&pass.equals(companypass))
          {
              hs.setAttribute("company_name",companyname);
              hs.setAttribute("company_email",companemail);
              hs.setAttribute("company_phno",companyphno);
              hs.setAttribute("company_location",companylocation);
                hs.setAttribute("company_status",companystatus);
               
              response.sendRedirect("home_company.jsp");
          }
          else
          {
            out.print("<script>alert('Wrong Id or Password')</script>");
            response.sendRedirect("login_company.jsp");
          }
       }
       catch(Exception ex)
       {
           out.print(ex);
       }
             
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
    }}// </editor-fold>


