<%-- 
    Document   : home_company
    Created on : 19 Mar, 2019, 1:05:51 PM
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>Home company</title>
        <style>

            .box
            {
                float:right;
                margin: 0 auto;
                height:600px;
                width:400px;
                padding:40px;
                background-color:#008B8B;
                box-sizing:border-box;
                box-shadow: 0 15px 25px rgba(0,0,0,.7);
                border-radius:10px;
               

            }
            
            
            #d2{
                width:100%;
                
                
            }       
          
  #footer {
  background: #000;
  padding: 0 0 30px 0;
  color: #eee;
  font-size: 14px;
   margin-top: 630px;
}

#footer .footer-top {
  background: #111;
  padding: 60px 0 30px 0;
}

#footer .footer-top .footer-info {
  margin-bottom: 30px;
}

#footer .footer-top .footer-info h3 {
  font-size: 34px;
  margin: 0 0 20px 0;
  padding: 2px 0 2px 0px;
  line-height: 1;
  font-family: Verdana, Geneva, sans-serif;
  font-weight: 700;
  letter-spacing: 3px;
 /* border-left: 4px solid #18d26e;*/
}

#footer .footer-top .footer-info p {
  font-size: 14px;
 line-height: 24px;
  margin-bottom: 0;
  font-family: Verdana, Geneva, sans-serif;
  color: #eee;
}

#footer .footer-top .social-links a {
  font-size: 18px;
  display: inline-block;
  background: #333;
  color: #eee;
  line-height: 1;
  padding: 8px 0;
  margin-right: 4px;
  border-radius: 50%;
  text-align: center;
  width: 36px;
  height: 36px;
  transition: 0.3s;
}

#footer .footer-top .social-links a:hover {
  background: #18d26e;
  color: #fff;
}

#footer .footer-top h4 {
  font-size: 14px;
  font-weight: bold;
  color: #fff;
  text-transform: uppercase;
  position: relative;
  padding-bottom: 12px;
}

#footer .footer-top h4::before,
#footer .footer-top h4::after {
  content: '';
  position: absolute;
  left: 0;
  bottom: 0;
  height: 2px;
}

#footer .footer-top h4::before {
  right: 0;
  background: #555;
}
/*
#footer .footer-top h4::after {
  background: white;
  width: 60px;
}
*/
#footer .footer-top .footer-links {
  margin-bottom: 30px;
}

#footer .footer-top .footer-links ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

#footer .footer-top .footer-links ul i {
  padding-right: 8px;
  color: #ddd;
}

#footer .footer-top .footer-links ul li {
  border-bottom: 1px solid #333;
  padding: 10px 0;
}

#footer .footer-top .footer-links ul li:first-child {
  padding-top: 0;
}

#footer .footer-top .footer-links ul a {
  color: #eee;
}

#footer .footer-top .footer-links ul a:hover {
  color: #778899;
}

#footer .footer-top .footer-contact {
  margin-bottom: 30px;
}

#footer .footer-top .footer-contact p {
  line-height: 26px;
}

#footer .footer-top .footer-newsletter {
  margin-bottom: 30px;
}

#footer .footer-top .footer-newsletter input[type="email"] {
  border: 0;
  padding: 6px 8px;
  width: 65%;
}

#footer .footer-top .footer-newsletter input[type="submit"] {
  background: #18d26e;
  border: 0;
  width: 35%;
  padding: 6px 0;
  text-align: center;
  color: #fff;
  transition: 0.3s;
  cursor: pointer;
}

#footer .footer-top .footer-newsletter input[type="submit"]:hover {
  background: #13a456;
}

#footer .copyright {
  text-align: center;
  padding-top: 30px;
}

#footer .credits {
  text-align: center;
  font-size: 13px;
  color: #ddd;
}

                 .topics{
                    color: #333333;
                        text-align:center;
                        text-transform: capitalize;
                }
                .line1{
                    border-color: #A9A9A9;
                }
           </style>
   
            
         
        
    </head>

    
    <body>
        <!--Start of Navbar Section-->
        <%@include file = "header_company.jsp"%>
        <!--End of Navbar Section-->
        
        
        
          
    <%! String com_email="",com_name; %>
                    <%  
                   
                          
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");

                    String fetchQuery = "select * from notice_table  where companymsg='company'";
                    Statement fetchStatement = conn.createStatement();
                    
                     HttpSession hs=request.getSession();
              com_email=hs.getAttribute("company_email").toString();
                              String x="select * from companysignup where companyemail='"+com_email+"'";
               ResultSet rs=fetchStatement.executeQuery(x);
               while(rs.next())
           {      
             
              com_name=rs.getString("companyname");
           }
                              %>

         <div id="d2">
              <h2 class="topics" ><i class="far fa-clipboard"></i>WELCOME <%=com_name%></h2>
            <hr class="line1">
             
          <div class="box">
               <h1><B><u>NOTICE BOARD</u></b></h1>
        <marquee direction="up" height="450">
        <section> 
            <table>
               
                <%         
                    ResultSet rs1 = fetchStatement.executeQuery(fetchQuery);
                    while(rs1.next()){
                    %> 

                    <tr>
                    
                        <td><h4><br><br><br><b><%=rs1.getString("message")%></b></h4></td>                              
                        
                    </tr>
                     
                                                 
                    <% } %>
            </table>
        </section> 
        </marquee>
          </div>
            </div>
            
            
            <section>
                
                <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6 footer-info">
            <h3>Placement Cell</h3>
            <p>our main motive is to priovide best facilities to our candidates</p>
          </div>

          <div class="col-lg-4 col-md-6 footer-links">
            <h4>quick Links</h4>
            <ul>
              <li><i class="ion-ios-arrow-right"></i> <a href="home_student.jsp">Home</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="placement_student.jsp">upcoming companies</a></li>
              
              <li><i class="ion-ios-arrow-right"></i> <a href="apply_job.jsp">apply in companies</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="student_result.jsp">my result</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="our_recruiter.jsp">Our Recruiters</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="profile_student.jsp">my profile</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-contact">
            <h4>Placement Co-ordinator</h4>
            <p style="font-size:20px;">
              Mr Mohit Sharma<br>
              RIMT UNIVERSITY<br>
              Mandi-Gobindgarh<br>
              <strong>Phone:</strong>6284986527<br>
              <strong>Email:</strong>montymohit3567@gmail.com<br>
            </p>



          </div>



        </div>
      </div>
    </div>
        </footer>
                </section>
 
        
    </body>
</html>
