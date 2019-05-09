
<%-- 
    Document   : selected_candidates
    Created on : 2 Apr, 2019, 5:57:57 PM
    Author     : HP
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <style>
        table
        {
            width : 50%;
        }

        td
        {
            border : 2px solid black;
            padding : 10px;
            width : 100px;
            height : 50px;
        }

        th
        {
            border : 2px solid black;
            text-align: center;
        }

    </style>

    <script>
        function unplaced(x) {
            window.location.href = "unplaced_receive.jsp?studentid=" + x;
        }
    </script>

</head>
<body>

    <!--Start of Navbar Section-->
    <%@include file = "header_company.jsp"%>
    <!--End of Navbar Section-->

    <section> 
        <table>
          

            <%! boolean student_visible = false;%>
            <%                String status = "placed";
                HttpSession hs = request.getSession();
                String comp_email = hs.getAttribute("company_email").toString();
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");

                    String d = "select * from interestedstudents where company_email='" + comp_email + "'";
                    Statement fetchStatement1 = conn.createStatement();
                    ResultSet rs1 = fetchStatement1.executeQuery(d);

                    while (rs1.next()) {
                        student_visible = rs1.getBoolean("student_visible");

                    }
                  
                        String fetchQuery = "select * from interestedstudents where company_email='" + comp_email + "' and status='" + status + "'";
                        Statement fetchStatement = conn.createStatement();
                        ResultSet rs = fetchStatement.executeQuery(fetchQuery);
%>
 
            <tr>
                <th>STUDENT NAME</th>
                <th>STUDENT ROLL NO.</th>
                <th>STUDENT  EMAIL ID</th>
                  <%  if (student_visible == false) {%>
                <th>CHANGE RESULT </th>
                  <%    }
                 
                  %>
            </tr>           
            
            <%
                        while (rs.next()) {
            %> 
            <tr>                             
                <td><%=rs.getString("student_name")%></td>
                <td><%=rs.getString("student_rollno")%></td>
                <td><%=rs.getString("student_email")%></td>
                <%  if (student_visible == false) {%>
                <td><button class="btn btn-danger" onclick="unplaced(<%=rs.getString("id")%>)">reject</button></td>
            <%           }
                 
            %>
            </tr>
            <% }

                   

                } catch (Exception ex) {
                    out.print(ex);
                }
            %>
        </table>
    </section> 

    <section>
        <%@include file = "footer-company.jsp"%>
    </section>
</body>
</html>
