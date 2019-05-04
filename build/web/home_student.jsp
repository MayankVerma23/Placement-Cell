<%-- 
    Document   : home_student
    Created on : 19 Mar, 2019, 12:56:36 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>Home Tpo</title>
        <style>
     
            .box
            {
                float:right;
                margin: 0 auto;
                height:600px;
                width:400px;
                padding:40px;
                background-color:#008B8B;
                box-sizing:border-box;
                box-shadow: 0 15px 25px rgba(0,0,0,.7);
                border-radius:10px;
               

            }
            
            
        </style>
 
            
    </head>

    
 <body>

        <!--Start of Navbar Section-->
        <%@include file = "header_student.jsp"%>
        <!--End of Navbar Section-->
   
          <div class="box">
               <h1><B><u>NOTICE BOARD</u></b></h1>
        <marquee direction="up" height="450">
        <section> 
            <table>
              
               
                    <%  
                   
                          
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");

                    String fetchQuery = "select * from notice_table";
                    Statement fetchStatement = conn.createStatement();
                    ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                    while(rs.next()){
                    %> 

                    <tr>
                    
                        <td><h4><br><br><br><b><%=rs.getString("message")%></b></h4></td>                              
                        
                    </tr>
                     
                                                 
                    <% } %>
            </table>
        </section> 
        </marquee>
          </div>
    </body>
</html>
