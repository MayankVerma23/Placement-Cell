<%-- 
    Document   : company_responsetable2
    Created on : 23 Apr, 2019, 9:58:52 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <link rel="stylesheet" href="loginsignup.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
      
           <script>
        function back(){
          window.close();
           
        } 
        </script>
       </head>
    
    <body>
       
         
        
          <%!String companyid1="";%>
          
       <%   
               companyid1= request.getParameter("companyid");
               Class.forName("com.mysql.jdbc.Driver");
               Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
               Statement stmt=conn.createStatement();
               String x="select * from companyrequirements where id='"+companyid1+"'";
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
           {      
          
              
           
       %>
             
               
       
 
 

         <div style="text-align:right;">
       
         </div>
        <br>
         
             <table class="table table-hover">
<tr>
<td>COMPANY NAME</td>

<td></td>


<td><%=rs.getString("companyname")%></td>
</tr>

<tr>
<td>COURSE 1</td>

<td></td>


<td><%=rs.getString("requiredcourse1")%></td>
</tr>


<tr>
<td>COURSE 2</td>

<td></td>


<td><%=rs.getString("requiredcourse2")%></td>
</tr>


<tr>
<td>COURSE 3</td>

<td></td>


<td><%=rs.getString("requiredcourse3")%></td>
</tr>

<tr>
    <td>BRANCH 1</td>

<td></td>


<td><%=rs.getString("requiredbranch1")%></td>
</tr>

<tr>
<td>BRANCH 2</td>

<td></td>


<td><%=rs.getString("requiredbranch2")%></td>
</tr>


<tr>
<td>BRANCH 3</td>

<td></td>


<td><%=rs.getString("requiredbranch3")%></td>
</tr>


<tr>
<td>BRANCH 4</td>

<td></td>


<td><%=rs.getString("requiredbranch4")%></td>
</tr>

<tr>
<td>BACKLOG ALLOW</td>
<td></td>

<td><%=rs.getString("requiredbacklog")%></td>
</tr>
<tr>
<td>PERCENTAGE REQUIRED</td>
<td></td>

<td><%=rs.getString("requiredpercentage")%></td>
</tr>

<tr>
<td>REQUIRED SKILL</td>

<td></td>

<td><%=rs.getString("requiredskill")%></td>
</tr>

<tr>
<td>SELECTION PROCEDURE</td>

<td></td>

<td><%=rs.getString("requiredprocedure")%></td>
</tr>


<tr>
<td>BATCH ALLOW</td>

<td></td>

<td><%=rs.getString("requiredbatch")%></td>
</tr>
<tr>
<td>JOB PROFILE</td>

<td></td>


<td><%=rs.getString("job_profile")%></td>
</tr>

<tr>
<td>PACKAGE</td>

<td></td>


<td><%=rs.getString("package")%></td>
</tr>
<tr>
<td>JOB LOCATION</td>

<td></td>


<td><%=rs.getString("job_location")%></td>
</tr>

<%
                        Calendar c1 = Calendar.getInstance();
                        c1.setTimeInMillis(rs.getDate("date").getTime());
                        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");   
                    %>
                    
<tr>
<td>LAST DATE TO APPLY</td>

<td></td>


 <td><%=sdf.format(c1.getTime())%></td>
</tr>

   </table>


<button class="btn btn-danger" onclick="back()">back</button>

          
              

            <% }%>
       
    </body>