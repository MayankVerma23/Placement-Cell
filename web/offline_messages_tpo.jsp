<%-- 
    Document   : offline_messages_tpo
    Created on : Apr 27, 2019, 11:27:37 AM
    Author     : Divjot
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

        <style>
            #offmess  .collapsible {
                background-color: #FF7F50;
                color: black;
                border-radius: 3px;
                cursor: pointer;
                padding: 18px;
                width: 100%;
                border: none;
                text-align: left;
                outline: none;
                font-size: 15px;
                margin-bottom: 10px;
            }

            #offmess .active, .collapsible:hover {
                background-color: #FFA07A;
            }

            #offmess .content {
                padding: 0 18px;
                display: none;
                overflow: hidden;
                background-color: #f1f1f1;
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>
        <%@include file="header_tpo.jsp" %>
        <div id="offmess" class="container">
            <%
                String name, email, message;
                try {
                    String stud = "student";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                    Statement st = conn.createStatement();
                    String x1 = "Select * from offlinequeries order by sno desc";

                    ResultSet rs1 = st.executeQuery(x1);
                    while (rs1.next()) {
                        name = rs1.getString("name");
                        email = rs1.getString("email");
                        message = rs1.getString("message");
            %>
            <button class="collapsible">From <%=name%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     Email <%=email%></button>
            <div class="content">
                <p><%=message%></p>
            </div> 
            <%
                    }
                } catch (Exception ex) {
                    out.print(ex);
                }
            %>
        </div>
        <script>
            var coll = document.getElementsByClassName("collapsible");
            var i;

            for (i = 0; i < coll.length; i++) {
                coll[i].addEventListener("click", function () {
                    this.classList.toggle("active");
                    var content = this.nextElementSibling;
                    if (content.style.display === "block") {
                        content.style.display = "none";
                    } else {
                        content.style.display = "block";
                    }
                });
            }
        </script>
    </body>
</html>
