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
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
      <meta http-equiv="refresh" content="10">
        <script>
            function changeprofile1(){
                    var r = confirm("R U SURE!! U WANT CHANGES IN PROFILE");     
                    if (r == true) {
                    window.open('profile_student_1.jsp','popUpWindow','height=500,width=600,left=650,top=250,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
                    }
              }
        </script>
        
    </head>
    
    <body>
        
        <!--Start of Navbar Section-->
        <%@include file = "header_student.jsp"%>
        <!--End of Navbar Section-->
        
        
        <%@include file = "pic.jsp"%>
          <%!String stu_roll1="",sturoll="",stuname="",stuemail="",studegree="",stuphno="",stugender="",stupass="",
           stu_batch,stu_ten,stu_twe,stu_sem1,stu_sem2,stu_sem3,stu_sem4,stu_sem5,stu_sem6,stu_sem7,stu_sem8,stu_cgpa,stu_branch       ;%>
          
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
              stu_batch=rs.getString("batch");
              stu_ten=rs.getString("ten");
              stu_twe=rs.getString("twe");
              stu_sem1=rs.getString("sem1");
              stu_sem2=rs.getString("sem2");
              stu_sem3=rs.getString("sem3");
              stu_sem4=rs.getString("sem4");
              stu_sem5=rs.getString("sem5");
              stu_sem6=rs.getString("sem6");
              stu_sem7=rs.getString("sem7");
              stu_sem8=rs.getString("sem8");
              stu_cgpa=rs.getString("cgpa");
              
              stu_branch=rs.getString("branch");
              
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

<tr>
<td>BRANCH</td>

<td></td>

<td><%=stu_branch%></td>
</tr>

<tr>
<td>10th PERCENTAGE</td>

<td></td>

<td><%=stu_ten%></td>
</tr>

<tr>
<td>12th PERCENTAGE</td>

<td></td>

<td><%=stu_twe%></td>
</tr>


<tr>
<td> 1st SEM PERCENTAGE</td>

<td></td>

<td><%=stu_sem1%></td>
</tr>

<tr>
<td> 2nd SEM PERCENTAGE</td>

<td></td>

<td><%=stu_sem2%></td>
</tr>

<tr>
<td> 3rd SEM PERCENTAGE</td>

<td></td>

<td><%=stu_sem3%></td>
</tr>

<tr>
<td> 4th SEM PERCENTAGE</td>

<td></td>

<td><%=stu_sem4%></td>
</tr>

<tr>
<td> 5th SEM PERCENTAGE</td>

<td></td>

<td><%=stu_sem5%></td>
</tr>

<tr>
<td> 6th SEM PERCENTAGE</td>

<td></td>

<td><%=stu_sem6%></td>
</tr>

<tr>
<td> 7th SEM PERCENTAGE</td>

<td></td>

<td><%=stu_sem7%></td>
</tr>

<tr>
<td> 8th SEM PERCENTAGE</td>

<td></td>

<td><%=stu_sem8%></td>
</tr>

<tr>
<td>CURRENT DEGREE PERCENTAGE</td>

<td></td>

<td><%=stu_cgpa%></td>
</tr>
<tr>
<td>PASSOUT YEAR</td>

<td></td>

<td><%=stu_batch%></td>
</tr>


</table>
<%}%>
              
<input type="button" value="UPDATE PROFILE" onclick="changeprofile1()">
            </form>
       
    </body>
</html>
