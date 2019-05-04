<%-- 
    Document   : offcampus_detail
    Created on : 4 Apr, 2019, 8:34:44 PM
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
      
        
       </head>
    
    <body >
       
          <%!String coll_roll="",stu_id="",coll_name="",course1="", stuname="",
                  branch1="", email1="",backlog1="",pass_year="", twelve="",degree1="";%>
          
       <%   
            stu_id=request.getParameter("studentid");
               Class.forName("com.mysql.jdbc.Driver");
               Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
               Statement stmt=conn.createStatement();
               String x="select * from offcampus_table where id='"+stu_id+"'";
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
           {      
              coll_roll=rs.getString("college_roll");
              stuname=rs.getString("name");
              coll_name=rs.getString("college_name");
              course1=rs.getString("course");
              branch1=rs.getString("branch");
              backlog1=rs.getString("backlog");
              pass_year=rs.getString("passingyear");
              twelve=rs.getString("12th");
              degree1=rs.getString("degree");
               email1=rs.getString("email");
              
           }
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
<td>COLLEGE ROLL NO.</td>
<td></td>

<td><%= coll_roll%></td>
</tr>
<tr>
<td>COLLEGE/UNIVERSITY NAME</td>
<td></td>

<td><%=coll_name%></td>
</tr>

<tr>
<td>COURSE</td>

<td></td>

<td><%=course1%></td>
</tr>

<tr>
<td>BRANCH</td>

<td></td>

<td><%=branch1%></td>
</tr>


<tr>
<td>BACKLOG</td>

<td></td>

<td><%=backlog1%></td>
</tr>
<tr>
<td>PASSING YEAR</td>

<td></td>


<td><%=pass_year%> </td>
</tr>

<tr>
<td>12TH PERCENTAGE</td>

<td></td>


<td><%=twelve%> </td>
</tr>
<tr>
<td>DEGREE PERCENTAGE</td>

<td></td>


<td><%=degree1%> </td>
</tr>

<tr>
<td>STUDENT EMAIL</td>

<td></td>


<td><%=email1%> </td>
</tr>
             </table>
              

            </form>
       
    </body>
</html>
