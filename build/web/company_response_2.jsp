<%-- 
    Document   : company_response_2
    Created on : 29 Mar, 2019, 11:18:13 PM
    Author     : HP
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>COMPANY RESPONSE</title>
    </head>
    <body>
        <%! String com_name = "", com_name1 = "",com_email="";%>
        <%

            String dateString = request.getParameter("date");
            SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
            Calendar c1 = Calendar.getInstance();

            c1.setTimeInMillis(s.parse(dateString).getTime());

            Date sqdate = new Date(c1.getTimeInMillis());
            String batch1 = request.getParameter("batch");
            String course1 = request.getParameter("course1");
            String course2 = request.getParameter("course2");
            String course3 = request.getParameter("course3");
            String br1 = request.getParameter("branch1");
            String br2 = request.getParameter("branch2");
            String br3 = request.getParameter("branch3");
            String br4 = request.getParameter("branch4");
            String backlog1 = request.getParameter("backlog");
            String percentage1 = request.getParameter("percentage");
            String skill1 = request.getParameter("skill");
            String procedure1 = request.getParameter("procedure");
            String job_profile = request.getParameter("job");
            String pack = request.getParameter("package");
            String location = request.getParameter("job_location");
              String inoffcampus = request.getParameter("campus");

            try {
                HttpSession hs = request.getSession();
                String comp_email = hs.getAttribute("company_email").toString();

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                Statement stmt = conn.createStatement();
                String y = "select * from companysignup where companyemail='" + comp_email + "'";
                ResultSet rs = stmt.executeQuery(y);
                while (rs.next()) {
                    com_name = rs.getString("companyname");
                    com_email = rs.getString("companyemail");
                }

                String z = "select * from companyrequirements ";
                ResultSet rs1 = stmt.executeQuery(z);
                while (rs1.next()) {
                    com_name1 = rs1.getString("companyname");
                }
                if (!com_name.equals(com_name1)) {
                    String x = "insert into companyrequirements values(null,'" + com_name + "','" + com_email + "','" + course1 + "','" + course2 + "','" + course3 + "','" + br1 + "','" + br2 + "','" + br3 + "','" + br4 + "','" + backlog1 + "','" + percentage1 + "','" + skill1 + "','" + procedure1 + "','" + batch1 + "','" + job_profile + "','" + pack + "','" + location + "','" + sqdate + "','" + inoffcampus + "')";
                    stmt.executeUpdate(x);

                    out.print("<script> alert('done') </script>" + "<br>");

                } else {
                    out.print("<script> alert('you already send the requirements') </script>" + "<br>");
                }
                response.sendRedirect("home_company.jsp");

            } catch (Exception ex) {
                out.print(ex.getMessage() + "<br>");
            }
        %>
    </body>
</html>
