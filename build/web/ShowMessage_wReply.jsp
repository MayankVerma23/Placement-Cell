<%-- 
    Document   : ShowMessage_wReply
    Created on : Mar 30, 2019, 12:27:39 AM
    Author     : Divjot
--%>
<a href="Your_Queries.jsp"></a>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Messages</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

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
                color:#E9967A;
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
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");%>
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
                    <li><a href="profile.jsp" class="nav_links">Complete Info</a></li>
                    <li><a href="placement_tpo.jsp" class="nav_links">New Company Request</a></li>
                    <li><a href="approved_table.jsp" class="nav_links">Approved Compnies</a></li>
                    <li><a href="declined_table.jsp" class="nav_links">Declined Compnies</a></li>
                    <li><a href="Your_Queries.jsp" class="nav_links"><i class="fas fa-envelope"></i>  Messages</a></li>
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
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/contact", "root", "");
                Statement st = con.createStatement();
                String x1 = "Select * from queries where ID='" + idd + "'";

                ResultSet rs = st.executeQuery(x1);
                while (rs.next()) {

                    subject = rs.getString("Subject");
                    message = rs.getString("Message");
                    reply = rs.getString("Reply");
        %>

        <%
            HttpSession hs = request.getSession();
            hs.setAttribute("id", idd);
        %>

        <section>   
            <form action="submit_reply.jsp" method="POST"> 

                <h4><%=subject%></h4>
                <p><%=message%></p>

                <textarea name="reply"  placeholder="Reply.." ></textarea>
                <br>
                <br>
                <br>
                <input type="submit" class=form-submit-button value="Reply">
            </form>
        </section>    
        <%

                }

            } catch (Exception ex) {
                out.println(ex);
            }
        %>

    </body>
</html>