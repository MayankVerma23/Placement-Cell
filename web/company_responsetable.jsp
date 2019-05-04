<%-- 
    Document   : company_responsetable
    Created on : 30 Mar, 2019, 11:30:40 AM
    Author     : HP
--%>

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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
           
        <style>
            table
            {
                width : 50%;
                 margin-left:25%;
                 margin-top:5%;
             
            }
            
            td
            {
                border : 2px solid black;
                padding : 20px;
                width : 100px;
                height : 40px;
                text-align: center;
            }
                
            th
            {
                 text-align: center;
                height : 60px;
                border : 2px solid black;
               
            }
            
        </style>
        
        <script>
        function profile(x){
          //  alert(x);
            //window.location.href = "apply_job2.jsp?companyid="+x;
             window.open('company_responsetable2.jsp?companyid='+x,'popUpWindow','height=550,width=700,left=650,top=250,resizable=no,scrollbars=no,toolbar=no,menubar=no,location=no,directories=no, status=yes');
                
        } 
        </script>

    </head>
    <body>
       
        
        <!--Start of Navbar Section-->
            <%@include file = "header_tpo.jsp"%>
        <!--End of Navbar Section-->
        
       <section> 
            <table>
                <tr>
                    <th>COMPANY NAME</th>
                    <th>VIEW REQUIREMENTS</th>
                    
                </tr>
                
                <%    
               Class.forName("com.mysql.jdbc.Driver");
                Connection conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
                String fetchQuery = "select * from companyrequirements";
                Statement fetchStatement = conn.createStatement();
                ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                
                while(rs.next()){
                %> 

                <tr>                
                    <td><%=rs.getString("companyname")%></td>
                    <td><button class="btn btn-danger" onclick="profile(<%=rs.getString("id")%>)">view</button></td>
                </tr>
                                       
                <% } %>
            </table>
        </section> 
    </body>
</html>
