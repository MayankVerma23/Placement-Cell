<%-- 
    Document   : interested_stu_in_comp
    Created on : 31 Mar, 2019, 4:39:01 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <style>
     table{
                border: 2px solid black;
               }
            
            .r1:hover{
                background-color: #add8e682;
            }
            
    </style>
</head>
<body>

    

     <section style="min-height:500px;" class="container">
            
            <table class="table" >

                <tr style="background-color:black;color:white;">

                <th>STUDENT NAME</th>
                <th>STUDENT ROLL NO.</th> 
                <th>STUDENT EMAIL ID</th>
            </tr>

            <%
                HttpSession hs = request.getSession();
                String comp_email = hs.getAttribute("company_email").toString();
                try {
                     Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");
                 
                    String fetchQuery3 = "select * from interestedstudents where company_email='" + comp_email + "'";
                    Statement fetchStatement3 = con.createStatement();
                    ResultSet rs = fetchStatement3.executeQuery(fetchQuery3);
                    while (rs.next()) {
            %> 

            <tr class="r1">                 

                <td><%=rs.getString("student_name")%></td>
                <td><%=rs.getString("student_rollno")%></td>
                <td><%=rs.getString("student_email")%></td>
            </tr>

            <% }
                } catch (Exception ex) {
                    out.print(ex);
                }

            %>
        </table>
    </section>
   
</body>
</html>
