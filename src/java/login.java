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
             e=request.getParameter("LoginAs");
             hs.setAttribute("log",e);
          
  
            switch (e) {
                case "student":
                    String rollno=request.getParameter("email");
                    String studentpass=request.getParameter("password");
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
                        Statement stmt=con.createStatement();
                        
                        String x="select * from studentsignup where studentrollno='"+rollno+"' and studentpassword='"+studentpass+"';";
                        ResultSet rs=stmt.executeQuery(x);
                        
                        String stu_roll="";
                        
                        if(rs.next())
                        {
                            stu_roll=rs.getString("studentrollno");
                            hs.setAttribute("stu_roll",stu_roll);
                            response.sendRedirect("home_student.jsp");
                        }
                        else
                        {
                            response.sendRedirect("login_page.jsp");
                         }
                    }
                    catch(Exception ex)
                    {
                        System.out.println(ex.getCause() + " " + ex.getMessage());
                    }
                    break;
                    
                case "tpo":
                    String tponame=request.getParameter("email");
                    String tpopass=request.getParameter("password");
                    
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
                            hs.setAttribute("tpo_name",tponame);
                            response.sendRedirect("home_tpo.jsp");
                        }
                        
                        else
                        {
                            response.sendRedirect("login_page.jsp");
                        }
                        
                        
                    }
                    catch(Exception ex)
                    {
                        out.print(ex);
                    } 
                    break;
                
                default:
                    String company_email=request.getParameter("email");
                    String pass=request.getParameter("password");
                    String companyname="",companemail="",companyphno="",companylocation="",companypass="",companystatus="";
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
                        Statement stmt=con.createStatement();
                        
                        String x="select * from companysignup where companyemail='"+company_email+"'and companyPassword='"+pass+"'";
                        ResultSet rs=stmt.executeQuery(x);
                        if(rs.next())
                        {
                            companemail=rs.getString("companyemail");
                             companyname=rs.getString("companyname");
                            hs.setAttribute("company_email",companemail);
                             hs.setAttribute("company_name",companyname);
                            response.sendRedirect("home_company.jsp");
                        }
                        else
                        {
                           
                            response.sendRedirect("login_page.jsp");
                        }
                    }
                    catch(Exception ex)
                    {
                        out.print(ex);
                    }            
                    break;
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


