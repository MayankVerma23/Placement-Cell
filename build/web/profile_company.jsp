<%-- 
    Document   : profile_company
    Created on : 22 Mar, 2019, 12:50:03 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title id="title">COMPANY_INFORMATION</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <meta http-equiv="refresh" content="5">
        
        <script>
            function changeprofile1()
            {
                    var r = confirm("R U SURE!! U WANT CHANGES IN PROFILE");
                    if (r == true) {
                        window.open('profile_company_1.jsp','popUpWindow','height=500,width=600,left=650,top=250,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
                    }
            }
               function uploadimag()
               {
              var r = confirm("R U SURE!! U WANT CHANGES IN PROFILE");
                    if (r == true) {
                        window.open('image_company.jsp','popUpWindow','height=500,width=600,left=650,top=250,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
                    }
                }
        </script>
        
    </head>
    
    <body>
         <%@include file = "header_company.jsp"%>
    <%
          HttpSession hss=request.getSession();
        String company_email=hss.getAttribute("company_email").toString();
      String imgemail="";
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
                        Statement stmt=con.createStatement();
                        
                        String y="select * from company_image where email='"+company_email+"'";
                        ResultSet rs1=stmt.executeQuery(y);
                        while(rs1.next())
                      {
                         imgemail=rs1.getString("email");
                      }
                    if(!company_email.equals(imgemail)) 
             { %>

        <!--Start of Navbar Section-->
       
        <h4>  Please upload image </h4>
        <input type="button" value="uploadimage" onclick="uploadimag()">
      <%}
        else{
             
               }
          }
                    catch(Exception ex)
                    {
                        out.print(ex);
                    }   
      %>
        
        <!--End of Navbar Section-->
        
         <%--<%@include file = "logocomp.jsp"%>--%>
               <%@include file = "pic.jsp"%>
            <%!String com_name="",com_email="",com_phno="",com_location="",com_Password="",com_status="",com_email1="";%>
          
            <%   
             HttpSession hs1=request.getSession();
               com_email=hs1.getAttribute("company_email").toString();
               Class.forName("com.mysql.jdbc.Driver");
               Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
               Statement stmt=conn.createStatement();
               String x="select * from companysignup where companyemail='"+com_email+"'";
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
                {      
                    com_name=rs.getString("companyname");
                    com_email1=rs.getString("companyemail");
                    com_phno=rs.getString("companyphno");
                    com_location=rs.getString("companylocation");
                    com_status=rs.getString("status");
                }
            %>
             
               
            <%
                    if(com_email.equals(com_email1)){
            %>
            
            <div style="text-align:right;">
           
            </div>
            
            <br>
            
            <form action=" " method="post" >
            <table class="table table-hover">

                <tr>
                    <td>NAME</td>
                    <td></td>
                    <td><%=com_name%></td>
                    </tr>
                <tr>
                    <td>EMAIL ID</td>
                    <td></td>
                    <td><%=com_email%></td>
                </tr>

                <tr>
                    <td>PHONE NO.</td>
                    <td></td>
                    <td><%=com_phno%></td>
                </tr>

                <tr>
                    <td>LOCATION</td>
                    <td></td>
                    <td><%=com_location%></td>
                </tr>


                <tr>
                    <td>STATUS</td>
                    <td></td>
                    <td><%=com_status%></td>
                </tr>
                
                </table>
                <%}%>
                <input type="button" value="UPDATE PROFILE" onclick="changeprofile1()"> 
            </form>
    </body>
</html>
