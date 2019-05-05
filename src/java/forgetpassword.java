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
 * @author hp
 */
@WebServlet(urlPatterns = {"/forgetpassword"})
public class forgetpassword extends HttpServlet {

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

            String forget = "";
            HttpSession hs = request.getSession();
            forget = (String) hs.getAttribute("forget");

            if (forget.equals("bcha")) {
                try {
                    String email = request.getParameter("email");
                    String stuid = "";
                    int count = 0;

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                    Statement stmt = con.createStatement();
                    String x = "select * from studentsignup where studentemail='" + email + "'";
                    ResultSet rs = stmt.executeQuery(x);
                    while (rs.next()) {
                        count++;
                        stuid = rs.getString("studentid");

                    }

                    if (count > 0) {
                        hs.setAttribute("forget", null);
                        hs.removeAttribute("forget");
                        hs.invalidate();
                        response.sendRedirect("https://template0706.000webhostapp.com/placementCell/forgetPassProcess_student.php?email=" + email + "&&id=" + stuid + "");
                    } else {
                        out.print("<script>alert('email not exists')</script>");
                        out.print("<script> window.location.href='forgetpassword_student.jsp' </script>");
                    }
                    count = 0;

                } catch (Exception ex) {
                    out.print(ex);
                }

            } else if (forget.equals("bchi")) {
                try {
                    String email = request.getParameter("email");
                    String compid = "";
                    int count = 0;

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                    Statement stmt = conn.createStatement();
                    String x = "select * from companysignup where companyemail='" + email + "'";
                    ResultSet rs = stmt.executeQuery(x);
                    while (rs.next()) {
                        count++;
                        compid = rs.getString("companyid");

                    }

                    if (count > 0) {
                        hs.setAttribute("forget", null);
                        hs.removeAttribute("forget");
                        hs.invalidate();
                        response.sendRedirect("https://template0706.000webhostapp.com/placementCell/forgetPassProcess_company.php?email=" + email + "&&id=" + compid + "");
                    } else {
                        out.print("<script>alert('email not exists')</script>");
                        out.print("<script> window.location.href='forgetpassword_company.jsp' </script>");
                    }
                    count = 0;

                } catch (Exception ex) {
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
    }// </editor-fold>

}
