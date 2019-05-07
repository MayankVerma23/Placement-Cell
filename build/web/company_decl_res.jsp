<%-- 
    Document   : company_decl_res
    Created on : 2 Apr, 2019, 5:29:01 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

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
        function placed(x) {
            window.location.href = "placed_receive.jsp?studentid=" + x;
        }
    </script>

</head>
<body>


    <!--Start of Navbar Section-->
    <%@include file = "header_company.jsp"%>
    <!--End of Navbar Section-->

    <section> 
        <form action="placed_receive.jsp" method="POST">
        <table>
            <tr>

                <th>STUDENT NAME</th>
                <th>STUDENT ROLL NO.</th>
                <th>STUDENT EMAIL ID</th>
                <th>DECLARE RESULT</th>

            </tr>

            <%
                HttpSession hs = request.getSession();
                String comp_email = hs.getAttribute("company_email").toString();
                String status1 = "unplaced";
                String status2 = "waiting";
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");
                    String fetchQuery = "select * from interestedstudents where company_email='" + comp_email + "' and (status='" + status1 + "' or status='" + status2 + "')";
                    Statement fetchStatement = conn.createStatement();
                    ResultSet rs = fetchStatement.executeQuery(fetchQuery);%>
              
                    
            <%
                    while (rs.next()) {
                        String myid = rs.getString("id");
            %> 

            <tr>              

                <td><%=rs.getString("student_name")%></td>
                <td><%=rs.getString("student_rollno")%></td>
                <td><%=rs.getString("student_email")%></td>
                <td><input type="checkbox" value='<%=myid%>' name="checkbox-group" ></td>
            </tr> 
<!--             <button class="btn btn-danger" onclick="placed(<%=rs.getString("id")%>)">placed</button>              
                   -->
            <% } %>
            <% }
                catch (Exception ex) 
                {
                    out.print(ex);
                }
            %>
            
        </table>
            <input type="submit" class="btn btn-success" value="Submit">
        </form>
            
    </section>
</body>
</html>
