<%-- 
    Document   : notice_student
    Created on : 28 Apr, 2019, 4:57:23 PM
    Author     : hp
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notice Student</title>
        <style>

            table{
                width:100%;
            }

            hr{
                margin-bottom: 0px !important;
            }

            .topics{
                color: #333333;
                text-align:center;
                text-transform: capitalize;
            }
            .box
            {
                margin: 10px;
                height:600px;
                width:400px;
                box-sizing:border-box;
                border-radius:10px;
                border: 1px solid black;
            }

            .update{
                text-align: center;
                color:white;
                background-color: black;
                margin: 0px;
                border-radius:10px 10px 0px 0px;
            }

            .notices{
                text-align:center;
            }
        </style>
    </head>

    <body>
        <%! String stu_roll1 = "", stuname = "";%>

        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");
            String fetchQuery = "select * from notice_table where studentmsg='student'";
            Statement fetchStatement = conn.createStatement();

        %>

        <section>    
            <div class="box">
                <h1 class="update"><b>LATEST UPDATES</b></h1>
                <marquee direction="up" height="500" onmouseover="this.stop();" onmouseout="this.start();">
                    <section> 
                        <table>
                            <%                                ResultSet rs1 = fetchStatement.executeQuery(fetchQuery);
                                while (rs1.next()) {
                            %> 
                            <tr>
                                <td><p class="notices"><b><%=rs1.getString("message")%></b></p></td>                              
                            </tr>
                            <% }%>
                        </table>
                    </section> 
                </marquee>
            </div>
        </section>
    </body>
</html>
