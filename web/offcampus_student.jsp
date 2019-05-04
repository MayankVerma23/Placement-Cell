<%-- 
    Document   : offcampus_student
    Created on : 4 Apr, 2019, 8:19:31 PM
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
            #div1{
                text-align:center;
                width:500px;
                margin-left:40%;
                margin-top:80px;
                
            }
        </style>
        
        <script>
            function viewprofile(x){
                window.open('offcampus_detail.jsp?studentid='+x,'popUpWindow','height=500,width=600,left=100,top=100,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
            }
        </script>
        
    </head>
    
    <body>
        
        
        <!--Start of Navbar Section-->
            <%@include file = "header_tpo.jsp"%>
        <!--End of Navbar Section-->
        
       <section>
           <div id="div1">
            <table>
                <tr>
                    <th>STUDENT NAME</th>
                    <th>VIEW PROFILE</th>
                  
                </tr>
                
                    <%  
                        
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");

                    String fetchQuery = "select * from offcampus_table";
                    Statement fetchStatement = conn.createStatement();
                    ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                    while(rs.next()){
                    %> 

                    <tr>
                        <td><%=rs.getString("name")%></td>
                        <td><button class="btn btn-danger" onclick="viewprofile(<%=rs.getString("id")%>)">view profile</button></td>
                    </tr>
                                       
                    <% } %>
            </table>
            </div>
        </section> 
</body>
</html>
