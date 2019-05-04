<%-- 
    Document   : comapny_record
    Created on : 7 Apr, 2019, 4:50:02 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <%@include file = "database_connection.jsp"%>  
        
        <!--Start of Navbar Section-->
            <%@include file = "header_tpo.jsp"%>
        <!--End of Navbar Section-->
        
       <section> 
            <table>
                <tr>
                    <th>COMPANY NAME</th>
                    <th>STUDENT ID</th>
                    <th>STUDENT NAME</th>
                    <th>STUDENT ROLL NO.</th>
                    
                </tr>
                
                    <%  
                    String status="placed";
                     
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");

                    String fetchQuery = "select * from interestedstudents where status='"+status+"'";
                    Statement fetchStatement = con.createStatement();
                    ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                    while(rs.next()){
                    %> 

                        <tr>
                            <td><%=rs.getString("company_name")%></td>                              
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("student_name")%></td>
                            <td><%=rs.getString("student_rollno")%></td>
                        </tr>
                                       
                    <% } %>
                    
                    <%--    <tr>
                    <th>COMPANY ID</th>
                    <th>COMPANY NAME/th>
                    <th>COMPANY EMAIL</th>
                    <th>COMPANY PHO</th>
                    <th>COMPANY LOACTION</th>
                    <th>COMPANY STATUS</th>
                </tr>
                    <%
                        
                    String fetchQuer = "select * from companysignup";
                    Statement fetchStatemen = con.createStatement();
                    ResultSet rs1 = fetchStatement.executeQuery(fetchQuer);
                    while(rs1.next()){
                    %> 

                        <tr>
                            <td><%=rs1.getString("company_id")%></td>                              
                            <td><%=rs1.getString("company_name")%></td>
                            <td><%=rs1.getString("companyphno")%></td>
                            <td><%=rs1.getString("companylocation")%></td>
                            <td><%=rs1.getString("status")%></td>
                        </tr>
                                       
                    <% } %>--%>
                    
                    
            </table>
        </section> 

    </body>
</html>
