<%-- 
    Document   : home_company
    Created on : 19 Mar, 2019, 1:05:51 PM
    Author     : My Lappy
--%>
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
        <title>HOME COMPANY</title>
        <style>

            .box
            {
                
                margin:10px;
                height:500px;
                width:450px;
                padding:40px;
                background-color:#fff;
                box-sizing:border-box;
                box-shadow: 0 15px 25px rgba(0,0,0,.7);
                border-radius:10px;


            }
            #d2{
                width:100%;


            }       
            .topics{
                color: #333333;
                text-align:center;
                text-transform: capitalize;
            }
            .line1{
                border-color: #A9A9A9;
            }
        </style>
          <script>
            function message(x) {
                window.open('notice_message.jsp?id=' + x, 'popUpWindow', 'height=260,width=510,left=650,top=250,resizable=no,scrollbars=no,toolbar=no,menubar=no,location=no,directories=no, status=yes');
            }
        </script>
    </head>

    <body>

        <!--Start of Navbar Section-->
        <%@include file = "header_company.jsp"%>
        <!--End of Navbar Section-->


        <%! String com_email = "", com_name;%>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");

            String fetchQuery = "select * from notice_table  where companymsg='company' or common='common' ";
            Statement fetchStatement = conn.createStatement();

            HttpSession hs = request.getSession();
            com_email = hs.getAttribute("company_email").toString();
            String x = "select * from companysignup where companyemail='" + com_email + "'";
            ResultSet rs = fetchStatement.executeQuery(x);
            while (rs.next()) {

                com_name = rs.getString("companyname");
            }
        %>

        <div id="d2">
            <h2 class="topics" ><i class="far fa-clipboard"></i>WELCOME <%=com_name%></h2>
            <hr class="line1">
        </div>
        <section>
            <div class="box" >
                <h1><B><u>NOTICE BOARD</u></b></h1>
                <marquee direction="up" height="400" onmouseover="this.stop()" onmouseout="this.start()" scrolldelay="200">

                 

                        <%
                            ResultSet rs1 = fetchStatement.executeQuery(fetchQuery);
                            while (rs1.next()) {
                        %> 

                       

                            <a onclick="message(<%=rs1.getString("id")%>)"><p class="notices"><b><%=rs1.getString("subject")%></b></p></a>                             
                                                    

                        


                        <% }%>
                 

                </marquee>
            </div>

        </section>

        <!--Start of Footer Section-->
        <section>
        <%@include file = "footer-company.jsp"%>
        </section>
        <!--End of Footer Section--> 


    </body>
</html>
