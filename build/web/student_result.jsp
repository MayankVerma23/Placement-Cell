<%-- 
    Document   : student_result
    Created on : 2 Apr, 2019, 7:16:38 PM
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
 
    </head>
    <body>
        

        
        <!--Start of Navbar Section-->
        <%@include file = "header_student.jsp"%>
        <!--End of Navbar Section-->
        
       <section> 
            <table>
                <tr>
                    <th>COMPANY NAME</th>
                    <th>COMPANY EMAIL ID</th>
                    <th>YOUR NAME</th>
                    <th>YOUR ROLL NO.</th>
                     <th>YOUR EMAIL ID</th>
                    <th>COMPANY RESULT</th>
                   
               </tr>
                
                <%  
                HttpSession hs=request.getSession();
                String stu_roll1=hs.getAttribute("stu_roll").toString();

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");

                String fetchQuery = "select * from interestedstudents where student_rollno='"+stu_roll1+"'";
                Statement fetchStatement = conn.createStatement();
                ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                while(rs.next()){
                %> 

                <tr>
                    <td><%=rs.getString("company_name")%></td>                              
                    <td><%=rs.getString("company_email")%></td>
                    <td><%=rs.getString("student_name")%></td>
                    <td><%=rs.getString("student_rollno")%></td>
                     <td><%=rs.getString("student_email")%></td>
                    <td><%=rs.getString("status")%></td>
                </tr>

                <% } %>
            </table>
        </section> 
    </body>
</html>
