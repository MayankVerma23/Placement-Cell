    
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
        <title>MESSAGE</title>
        <style>
            body{
                background-color: #ffffff;
            }
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
            section{
                margin-top: 10px;


            }

            .hover tr:hover{
                background-color:#F2D0D1;
            }

            th {
                padding-top: 12px;
                padding-bottom: 12px;
                padding-left: 15px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }

            tr{
                font-size:150%;

            }
            td{
                font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
                font-size:90%;
            }
            .msg{
                align-items: center;
                border: 2px solid #2F4F4F;
                background-color: #E9967A;
                color:#333333;
                border-radius:5px;
                padding: 10px;
                max-width: 60%;
                float:right;
                opacity: 0.9;
                filter: alpha(opacity=50); 
                margin-bottom:10px;

            }   
            .reply{
                align-items: center;
                border: 2px solid #2F4F4F;
                background-color: 	#ddd;
                color: #333333;
                border-radius:5px;
                padding: 10px;
                max-width:60%;  
                float: left;
                opacity: 0.9;
                filter: alpha(opacity=50); 
                margin-bottom:10px;
            }  
            .adminr{
                text-align: right;
                color: #333333;
            }
            .userr{
                text-align: left;
                color: #333333;
            }

            .msgbox{

                width: 100%

            }
            .form-submit-button {

                background: #333333;
                border-color: #333333;
                color: #ffffff;

                float:right;
                height: 40px;

                width: 150px;

                font: bold 15px arial, sans-serif;
            }
            textarea{
                width: 100%;
                height: 250px;
                padding: 12px 20px;
                box-sizing: border-box;
                border: 2px solid #ccc;
                border-radius: 10px;
                background-color: #f8f8f8;
                font-size: 16px;
                resize: none;
            }  
            .time-right{
                color: #696969;



            }
            .topics{
                color: #333333;
                text-align:left;
                text-transform: capitalize;
            }
            .line1{
                border-color: #A9A9A9;
            }
            .para{
                font-size:150%;
            }                
        </style>

    </head>
    <body>
        <!--Start of Navbar Section-->
        <%@include file = "header_tpo.jsp"%>
        <!--End of Navbar Section-->  
        <div class="container">





            <%! String name = "";
                String email = "";
                String subject = "";
                int id;
                String design = "";
                String message = "";
                String author = "";
                String time = "";
                int statuskey;
            %>

            <section>     

                <%
                    id = Integer.parseInt(request.getParameter("id"));

                    try {
                        String stud = "student";
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                        Statement st = conn.createStatement();
                        String x1 = "Select * from qmessages where id='" + id + "'";
                        String x2 = "Select * from queries where id='" + id + "'";
                        ResultSet rs = st.executeQuery(x2);
                        while (rs.next()) {

                            statuskey = rs.getInt("Status");
                        }
                        int i = 0;
                        rs = st.executeQuery(x1);
                        while (rs.next()) {

                            message = rs.getString("message");
                            subject = rs.getString("subject");
                            author = rs.getString("name");
                            design = rs.getString("designation");
                            time = rs.getString("time");

                            while (i == 0) {
                %>

                <h1 class="topics" >ID <%=id%>: <%=subject%></h1>
                <hr class="line1">
                <%
                        i++;
                    }
                    if (design.equals("tpo")) {
                %>
                <div class="msgbox">
                    <div class="container"  >

                        <h3 class="adminr"><i class="fas fa-user-cog"></i>  <%=author%></h3>

                        <div class="msg">
                            <p class="para"><%=message%></p> 
                            <br>
                            <span class="time-right"><%=time%></span>
                        </div>
                    </div>

                </div>
                <%
                } else {
                %>
                <div class="msgbox">
                    <div class="container"  >

                        <h3 class="userr"><%=author%></h3>

                        <div class="reply">
                            <p class="para"><%=message%></p> 
                            <br>
                            <span class="time-right"><%=time%></span>
                        </div>
                    </div>

                    <%--<span class="time-right">11:00</span>--%>

                </div>
                <%
                        }

                    }
                    HttpSession ticket = request.getSession();
                    ticket.setAttribute("t_id", id);
                    ticket.setAttribute("s_id", author);
                    ticket.setAttribute("design", design);
                    ticket.setAttribute("t_sub", subject);
                %>
                <br>
                <br>
                <% if (statuskey != 2) { %>
                <form action="ticket_reply_tpo.jsp">

                    <textarea name="rback"  placeholder="Add a reply..." required></textarea>
                    <br>
                    <br>
                    <p><input type="checkbox" name="status" value="End Ticket">Mark as Final<input type="submit" class=form-submit-button value="submit"></p>

                </form>    
                <%} %>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>



                <%
                    } catch (Exception ex) {
                        out.print(ex);
                    }

                %>
            </section>
        </div>
        <section>
            <%@include file = "footer-tpo.jsp"%> 
        </section>
    </body>
</html>