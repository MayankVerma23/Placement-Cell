<%-- 
    Document   : company_response
    Created on : 29 Mar, 2019, 10:06:29 PM
    Author     : HP
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
          
        <style>
            body
            {
                margin:0;
                padding:0;
                font-family:sans-serif;
                background-size:cover;
            }
            .box
            {
                position:absolute;
                top:50%;
                left:50%;
                transform:translate(-50%,-50%);
                width:400px;
                padding:40px;
                background:rgba(0,0,0,.8);
                box-sizing:border-box;
                box-shadow: 0 15px 25px rgba(0,0,0,.5);
                border-radius:10px;

            }
            .box h2
            {
                margin:0 0 30px;
                padding:0;
                color:#fff;
                text-align:center;
            }
            .box .inputBox
            {
                position:relative;
            }
            .box .inputBox input
            {
                width:100%;
                padding:10px 0;
                font-size:16px;
                color:#fff;
                letter-spacing:1px;
                margin-bottom:30px;
                border:none;
                border-bottom:1px solid #fff;
                outline:none;
                background:transparent;
               }
            .box .inputBox label
            {

                position:absolute;
                top:0;
                left:0;
                letter-spacing:1px;
                padding:10px 0;
                font-size:16px;
                color:#fff;
                pointer-events:none;
                transitions:.5s;

            }
            .box .inputBox input:focus~label,
            .box .inputBox input:valid~label
            {
                top:-18px;
                left:0;
                color:#03a9f4;
                font-size:12px;
            }

            .box input[type="submit"]
            {
                background:transparent;
                border:none;
                outline:none;
                color:#fff;
                background:#03a9f4;
                padding:10px 20px;
                cursor:pointer;
                border-radius:5px;
                }
        </style>
    </head>
    
    <body>
        <%@include file = "database_connection.jsp"%>  

        <!--Start of Navbar Section-->
        <%@include file = "header_company.jsp"%>
        <!--End of Navbar Section-->
        
        <%!String com_email="", com_status="",status_values="";%>
        <%
                HttpSession hs=request.getSession();
                com_email=hs.getAttribute("company_email").toString();
        
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                Statement stmt=conn.createStatement();
                String x="select * from companysignup where companyemail='"+com_email+"'";
                ResultSet rs=stmt.executeQuery(x);
                while(rs.next())
                {      
                    com_status=rs.getString("status");
                }
        %>
             
               
        <%
            if(com_status.equals("reject"))
            {
            %>
            <div><h1>TPO DO NOT ACCEPT YOUR REQUEST</h1></div>
            <%}%>
            
            
            <%
            if(com_status.equals("waiting"))
            {
            %>
            <div><h2>TPO DO NOT GIVE RESPONSE TO YOUR REQUEST YET</h2></div>
            <div><h1>PLEASE WAITE</h1></div>
            <%}%>
            
            <%
            if(com_status.equals("accept"))
            {
            %>
            <div class="box">
            <h2>ELIGIBILITY REQUIREMENTS</h2>
            <form action="company_response_2.jsp" method="post">
 
                <div class="inputBox">
                   <input type="text" name="course" required="">
                   <label>ELIGIBLE COURSE</label>
                </div>
                
                <div class="inputBox">
                   <input type="text" name="branch" required="">
                   <label>ELIGIBLE BRANCHES</label>
                </div>
                
                <div class="inputBox">
                   <input type="text" name="backlog" required="">
                   <label>NO. OF BACKLOG ALLOW</label>
                </div>
                
                <div class="inputBox">
                   <input type="text" name="percentage" required="">
                   <label>DEGREE PERCENTAGE</label>
                </div>
                
                <div class="inputBox">
                   <input type="text" name="skill" required="">
                   <label>SKILLS</label>
                </div>
                
                <div class="inputBox">
                   <input type="text" name="procedure" required="">
                   <label>SELECTION PROCEDURE</label>
                </div>
                
                <div class="inputBox">
                   <input type="text" name="batch" required="">
                   <label>STUDENT BATCH</label>
                </div>
                
                <div class="inputBox">
                   <input type="text" name="job">
                   <label>JOB PROFILE</label>
                </div>
                
                <div class="inputBox">
                   <input type="text" name="package">
                   <label>PACKAGE</label>
                </div>
                 
                <div class="inputBox">
                   <input type="text" name="job_location">
                   <label>JOB LOCATION</label>
                </div>
  
                <p style="color:white">Incampus</p><INPUT TYPE="radio" NAME="radios" VALUE="radio1" CHECKED >
                <p style="color:white">Offcampus & Incampus</p><INPUT TYPE="radio" NAME="radios" VALUE="radio2">
                <label>Eligible Students</label>
               
                <input type="submit"  value="Submit">
               
            </form>
            </div>
            <%}%>
    </body>
</html>
