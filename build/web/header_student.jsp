<%-- 
    Document   : header_student
    Created on : 3 Apr, 2019, 10:39:10 PM
    Author     : hp
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        
        <title>Header</title>
       
        <style>
           .dropdown-menu{
               background-color:black;
              
           }
           .dropdown-menu li{
               color:white;
           }
           a{
               color:white;
           }
           a:hover{
               color:black;
           }
           
        </style>
        
        <script>
                function changepassword(){  
                    window.open('changepassword_student.jsp','popUpWindow','height=500,width=600,left=650,top=250,resizable=no,scrollbars=no,toolbar=no,menubar=no,location=no,directories=no, status=yes');
                }
        </script>
    </head>
    
    <body>
        
        <%
        
            int ct=0;  
            try
            { 
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
                Statement st=con.createStatement();
                String x1="Select count(*) from queries where seen='0' and designation ='student'";

                ResultSet rs=st.executeQuery(x1);
                while(rs.next())
                {
                    ct=rs.getInt(1);
                }

            }
            catch(Exception ex)
            {
                out.print(ex);
            }    
        %>
        
        <section> 
            <div class="row">
                <div class="col-lg-12">
                    <h1 style="float:left;padding-left:20px;">Placement Cell</h1>
                </div>
            </div>
        </section>
        

        <section>
            <nav class="navbar navbar-dark bg-primary ">
              <div class="container-fluid">
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle " data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>                        
                  </button>


                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                  <ul class="nav navbar-nav">
                    <li class="active"><a href="home_student.jsp">HOME</a></li>
                    <li class="dropdown">
                      <a class="dropdown-toggle" data-toggle="dropdown" href="placement_student.jsp">COMPANIES INFORMATION<span class="caret"></span></a>
                      <ul class="dropdown-menu">
                        <li><a href="placement_student.jsp">UPCOMING COMPANIES</a></li>
                        <li><a href="apply_job.jsp">APPLY FOR JOB</a></li>
                        <li><a href="student_result.jsp">COMPANIES RESULT</a></li>
                      </ul>
                    </li>
                     <li><a href="apply_job.jsp">APPLY FOR JOB</a></li>
                    <li><a href="profile_student.jsp">PROFILE</a></li>
                    <li><a href="contactf_stud.jsp">CONTACT FORM</a></li>
                    <li><a href="view_upload_paper_student.jsp">PREVIOUS YEAR PAPERS</a></li>
                    <li><a href="your_inbox_student.jsp">MESSAGES <%if(ct>0){%> <span class="badge badge-light"><%=ct%><%}%></span></a></li>
                    <li><a onclick="changepassword()">CHANGE PASSWORD</a></li>
                  </ul>
                    
                  <ul class="nav navbar-nav navbar-right">
                    <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> LOGOUT</a></li>
                  </ul>
                    
                </div>
              </div>
            </nav>
        </section>

    </body>
</html>
