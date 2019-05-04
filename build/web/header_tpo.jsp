<%-- 
    Document   : header_tpo
    Created on : 3 Apr, 2019, 11:22:51 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
           .dropdown-menu{
               background-color:black;
              
           }
           .dropdown-menu li{
               color:white;
           }
           
        </style>
                                <%
                   int ct=0;  
             try{ 
          
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement st=con.createStatement();
         String x1="Select count(*) from queries where Status!=2";
        
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
        <script>
                function changepassword(){  
                    window.open('changepassword_tpo.jsp','popUpWindow','height=500,width=600,left=650,top=250,resizable=no,scrollbars=no,toolbar=no,menubar=no,location=no,directories=no, status=yes');
                }
        </script>
    </head>
    
    <body>

        <section> 
            <div class="row">
                <div class="col-lg-12">
                    <h1 style="float:left;padding-left:20px;">Placement Cell</h1>
                </div>
            </div>
        </section>
        
        <section>
         
            <nav class="navbar navbar-inverse">
              <div class="container-fluid">
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>                        
                  </button>


                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                  <ul class="nav navbar-nav">
                    <li class="active"><a href="home_tpo.jsp">HOME</a></li>
                    <li class="dropdown">
                      <a class="dropdown-toggle" data-toggle="dropdown" href="#">COMPANIES INFORMATION<span class="caret"></span></a>
                      <ul class="dropdown-menu">
                        <li><a href="placement_tpo.jsp">New Company Request</a></li>
                        <li><a href="approved_table.jsp">Approved Compnies</a></li>
                        <li><a href="declined_table.jsp">Declined Compnies</a></li>
                        <li><a href="company_responsetable.jsp">Accepted Company Reequirments</a></li>
                      </ul>
                    </li>
                    <li><a href="profile.jsp">PROFILE</a></li>
                    <li><a href="participation_tpo.jsp">Intrested Candidates</a></li>
                    <li><a href="Your_Queries.jsp">Messages<%if(ct>0){%> <span class="badge badge-light"><%=ct%><%}%></span></a></li>
                    <li><a href="tpo_placed_student.jsp" >Placed Student</a></li>
                    <li><a href="tpo_unplaced_student.jsp" >Unplaced Student</a></li>
                    <li><a href="offcampus_student.jsp">offcampus student</a></li>
                    <li><a href="new_notice_tpo.jsp">Add New Notice</a></li> 
                    <li><a href="paper_upload_tpo.jsp">Upload Paper</a></li> 
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
