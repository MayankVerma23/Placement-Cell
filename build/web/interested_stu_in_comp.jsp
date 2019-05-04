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
        <%@include file = "header_company.jsp"%>
        <!--End of Navbar Section-->
        
       <section> 
            <table>
                <tr>
                    <th>STUDENT ID</th>
                    <th>STUDENT NAME</th>
                    <th>STUDENT ROLL NO.</th>   
               </tr>
                
                    <%  
                    HttpSession hs=request.getSession();
                    String comp_name=hs.getAttribute("company_name").toString();

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");

                    String fetchQuery = "select * from interestedstudents where company_name='"+comp_name+"'";
                    Statement fetchStatement = conn.createStatement();
                    ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                    while(rs.next()){
                    %> 

                <tr>                 
                    <td><%=rs.getString("id")%></td>
                    <td><%=rs.getString("student_name")%></td>
                    <td><%=rs.getString("student_rollno")%></td>
                </tr>
                                       
                <% } %>
            </table>
        </section>
    </body>
</html>
