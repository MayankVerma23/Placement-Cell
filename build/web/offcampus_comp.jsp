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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

        <style>

            .topics{
                color: #333333;
                text-align:left;
                padding-left:100px;
                text-transform: capitalize;
            }

            .topics1{
                color: #333333;
                text-align:right;
            }
            .line1{
                border-color: #A9A9A9;
            }
            .linkq{
                text-align: right;
                padding-right:50px;
                color:  #333333;
                font-size: 130%;
            }
            .linkq:hover{
                opacity: 0.9;
            }          

            #container{
                margin-left:10%;
                margin-right:10%;
                margin-top:10%;   
            }


        </style>

        <script>
            function profile(x) {
                //  alert(x);
                //window.location.href = "apply_job2.jsp?companyid="+x;
                window.location.href = "offcampus_comp_detail.jsp?companyid=" + x;

            }
        </script>

    </head>
    <body>

        <section>
            <!--Start of Navbar Section-->
            <%@include file = "index_navbar.jsp"%>
            <!--End of Navbar Section-->
        </section>

        <section> 

            <div id="container">
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                    String fetchQuery = "select * from companyrequirements where inoffcampus='both'";
                    Statement fetchStatement = conn.createStatement();
                    ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                    while (rs.next()) {
                %> 


                <h3 class="topics" ><i class="fas fa-envelope-open-text"></i> <%=rs.getString("companyname")%></h3>
                <a class="topics1"  onclick="profile(<%=rs.getString("id")%>)"><h5 class="linkq"><i class="far fa-edit"></i>VIEW PROFILE</h5></a>
                <hr class="line1">

                <% }%>
            </div>
        </section> 

        <section>
            <%@include file = "footer-tpo.jsp"%> 
        </section>
    </body>
</html>
