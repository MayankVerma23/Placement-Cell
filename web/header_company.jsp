<%-- 
    Document   : header_company
    Created on : 3 Apr, 2019, 11:23:06 PM
    Author     : hp
--%>

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
        
        <script>
                function changepassword(){  
                    window.open('changepassword_company.jsp','popUpWindow','height=500,width=600,left=650,top=250,resizable=no,scrollbars=no,toolbar=no,menubar=no,location=no,directories=no, status=yes');
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
                      <a class="dropdown-toggle" data-toggle="dropdown" href="#">STUDENT SECTION<span class="caret"></span></a>
                      <ul class="dropdown-menu">
                        <li><a href="interested_stu_in_comp.jsp">Participated Candidates</a></li>
                        <li><a href="company_decl_res.jsp">declare result</a></li>
                        <li><a href="selected_candidates.jsp">selected candidates</a></li>
                      </ul>
                    </li>
                    <li><a href="profile_company.jsp">PROFILE</a></li>
                    <li><a href="company_response.jsp">Status</a></li>
                    
                    
                    
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
