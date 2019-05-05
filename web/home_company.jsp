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

                margin: 0 auto;
                height:600px;
                width:400px;
                padding:40px;
                background-color:#008B8B;
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
    </head>

    <body>

        <!--Start of Navbar Section-->
        <%@include file = "header_company.jsp"%>
        <!--End of Navbar Section-->


        <%! String com_email = "", com_name;%>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");

            String fetchQuery = "select * from notice_table  where companymsg='company'";
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
                <marquee direction="up" height="450">

                    <table>

                        <%
                            ResultSet rs1 = fetchStatement.executeQuery(fetchQuery);
                            while (rs1.next()) {
                        %> 

                        <tr>

                            <td><h4><br><br><br><b><%=rs1.getString("message")%></b></h4></td>                              

                        </tr>


                        <% }%>
                    </table>

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
