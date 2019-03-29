<%-- 
    Document   : student_information
    Created on : 14 Mar, 2019, 11:55:14 AM
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
        <title id="title">STUDENT_INFORMATION</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <link rel="stylesheet" href="loginsignup.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
      
        
        <script>
            function changeprofile1()
                {
                    var r = confirm("R U SURE!! U WANT CHANGES IN PROFILE");
                       
                        if (r == true) 
                        {
      window.open('profile_student_1.jsp','popUpWindow','height=500,width=400,left=100,top=100,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
         }
              }
        </script>
    </head>
    
    <body >
        <%@include file = "pic.jsp"%>
          <%!String stu_roll1="",sturoll="",stuname="",stuemail="",studegree="",stuphno="",stugender="",stupass="";%>
          
       <%   
            //   HttpSession hs=request.getSession();
               stu_roll1=hs.getAttribute("stu_roll").toString();
               Class.forName("com.mysql.jdbc.Driver");
               Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
               Statement stmt=conn.createStatement();
               String x="select * from studentsignup where studentrollno='"+stu_roll1+"'";
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
           {      
              sturoll=rs.getString("studentrollno");
              stuname=rs.getString("studentname");
              stuemail=rs.getString("studentemail");
              stuphno=rs.getString("studentphno");
              studegree=rs.getString("studentdegree");
              stugender=rs.getString("studentgender");
           }
       %>
             
               <%
                 if(stu_roll1.equals(sturoll)){
               %>
       
 
 

         <div style="text-align:right;">
       
         </div>
        <br>
         <form action=" " method="post" >
             <table class="table table-hover">
<tr>
<td>NAME</td>

<td></td>


<td><%=stuname%> </td>
</tr>
<tr>
<td>ROLL NO.</td>
<td></td>

<td><%=sturoll%></td>
</tr>
<tr>
<td>EMAIL ID</td>
<td></td>

<td><%=stuemail%></td>
</tr>

<tr>
<td>DEGREE</td>

<td></td>

<td><%=studegree%></td>
</tr>

<tr>
<td>PHONE NO.</td>

<td></td>

<td><%=stuphno%></td>
</tr>


<tr>
<td>GENDER</td>

<td></td>

<td><%=stugender%></td>
</tr>




</table>
<%}%>
              
<input type="button" value="UPDATE PROFILE" onclick="changeprofile1()">
            </form>
       
    </body>
</html>
