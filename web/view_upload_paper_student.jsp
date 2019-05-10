<%-- 
    Document   : stu_company_paper
    Created on : 9 Apr, 2019, 11:41:37 PM
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
        <title>VIEW UPLOAD PAPER</title>
        
        <style>

            .topics{
                color: #333333;
                text-align:left;
                padding-left:50px;
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

            #container-design{
                background-color: wheat;
                padding:30px 60px 30px 60px;;
                
                border: 2px solid black;
                
            }
        </style>
    </head>
    <body>
        <section>
        <%@include file = "header_student.jsp"%>
        </section>
       <section  style="margin-top: 80px;margin-bottom:20px;min-height:400px;"> 

            <div class="container" id="container-design">
                <h1 style="text-align: center;margin-bottom:30px;">PREVIOUS PAPERS</h1>
                <%!String pdf = "";%>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                    String fetchQuery = "Select * from old_paper";
                    Statement fetchStatement = conn.createStatement();
                    ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                    while (rs.next()) {
                         pdf = rs.getString("old_papers");
                %> 


                <h3 class="topics" ><i class="fas fa-envelope-open-text"></i> <%=rs.getString("name")%></h3>
                <a class="topics1" href="view_pdf.jsp?pdf=<%=pdf%>" ><h5 class="linkq"><i class="far fa-edit"></i>VIEW PAPER</h5></a>
                <hr class="line1">

                <% }%>
            </div>
        </section> 
        <section>
            <%@include file = "footer-student.jsp"%>
        </section>
    </body>
</html>

