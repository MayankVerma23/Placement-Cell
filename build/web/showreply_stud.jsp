<%-- 
    Document   : ShowMessage_wReply
    Created on : Mar 30, 2019, 12:27:39 AM
    Author     : Divjot
--%>
<a href="Your_Queries.jsp"></a>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <title>Messages</title>
        <style>
            table
            {
                width : 100%;
            }

            td
            {

                padding : 20px;
                width : 100px;
                height : 50px;
            }

            th
            {
                background-color: #4CAF50;
                color: white;
                text-align: left;
            }
            .navbar{
                background-color: #4379C0;
                border-color: #4353C0;

            }
            .nav_links{
                color:white;
            }
            .nav_links:hover{
                color: black;
            }   
            section{
                margin-top: 10px;

                margin-right: 400px;
                margin-left:400px;
            }

            textarea{
                width: 100%;
                height: 150px;
                padding: 12px 20px;
                box-sizing: border-box;
                border: 2px solid #ccc;
                border-radius: 10px;
                background-color: #f8f8f8;
                font-size: 16px;
                resize: none;
            }
            p {
                text-indent: 50px;
                text-align: justify;
                letter-spacing: 3px;
                font-family: Arial, Helvetica, sans-serif;
            }
            h4{
                color: #813434;
                font-size: 1.5em;
                font-weight: bold;
                font-family: Arial, Helvetica, sans-serif;
            }
            .form-submit-button {

                background: #4379C0;

                color: white;

                border-style: outset;

                border-color: #4379C0;

                height: 50px;

                width: 100px;

                font: bold 15px arial, sans-serif;



            }

        </style>

    </head>
    <body>

        <div class="container"></div>
        <section>
            <div class="row">
                <h1 style="float:left;padding-left:20px;">Placement<br>Cell</h1>
                <a href="#"><h4 style="float:right;padding-right:20px;">Logout</h4></a>
            </div>
        </section>    

        <section> 
            <%@include file = "sliding_text.jsp"%>
        </section> 

        <section> 
            <nav class="navbar">
                <ul class="nav navbar-nav">
                    <li><a href="profile_student.jsp" class="nav_links">Complete Info</a></li>
                    <li><a href="placement_student.jsp" class="nav_links">Placement Info</a></li>
                    <li><a href="changepassword_student.jsp" class="nav_links">Change Password</a></li>
                    <li><a href="contactf_stud.jsp" class="nav_links"><i class="fas fa-cog"></i>Support</a></li>
                    <li><a href="student_inbox.jsp" class="nav_links"><i class="fas fa-envelope"></i>  inbox</a></li>
                </ul>
            </nav>
        </section>      
        <%! String idd = "";
            String name = "";
            String subject = "";
            String message = "";
            String reply = "";


        %>
        <%

            idd = request.getParameter("id");
            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/contact", "root", "");
                Statement st = conn.createStatement();
                String x1 = "Select * from queries where ID='" + idd + "'";

                ResultSet rs = st.executeQuery(x1);
                while (rs.next()) {

                    subject = rs.getString("Subject");
                    message = rs.getString("Message");
                    reply = rs.getString("Reply");
        %>


        <section>   

            <h4><%=subject%></h4>
            <p><%=message%></p>
            <br>
            <h4>Reply</h4>
            <br>
            <p><%=reply%></p>


        </section>    
        <%

                }

            } catch (Exception ex) {
                out.println(ex);
            }
        %>

    </body>
</html>