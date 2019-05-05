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

        <title>Home student</title>

        <style>
            .box
            {
                float:right;

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


        </style>
    </head>

    <body>

        <!--Start of Navbar Section-->
        <%@include file ="header_student.jsp"%>
        <!--End of Navbar Section-->

        <%! String stu_roll1 = "", stuname = "";%>

        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");
            String fetchQuery = "select * from notice_table where studentmsg='student'";
            Statement fetchStatement = conn.createStatement();

            HttpSession hs = request.getSession();
            stu_roll1 = hs.getAttribute("stu_roll").toString();

            String x = "select * from studentsignup where studentrollno='" + stu_roll1 + "'";
            ResultSet rs = fetchStatement.executeQuery(x);
            while (rs.next()) {
                stuname = rs.getString("studentname");
            }
        %>

        <div id="d2">
            <h2 class="topics" >WELCOME <%=stuname%></h2>
            <hr>
        </div>

        <div class="box">

            <h1 class="update"><b>LATEST UPDATES</b></h1>

            <marquee direction="up" height="500" onmouseover="this.stop();" onmouseout="this.start();">
                <section> 
                    <table>
                        <%
                            ResultSet rs1 = fetchStatement.executeQuery(fetchQuery);
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

        <!--Start of Footer Section-->
        <%@include file = "home_student_footer.jsp"%>
        <!--End of Footer Section--> 

    </body>
</html>

