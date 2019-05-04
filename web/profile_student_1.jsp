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
     
       
          </head>
    
    <body>
          <%!String stu_roll1="",sturoll="",stuname="",stuemail="",studegree="",stuphno="",stugender="",stupass="",stubranch="",stubatch="",stutwe="",stuten="",stusem1="",stusem2="",stusem3="",stusem4="",stusem5="",stusem6="",stusem7="",stusem8="",stucgpa="",stubacklog="";%>
          
       <%   
           try{
               HttpSession hs=request.getSession();
               stu_roll1=hs.getAttribute("stu_roll").toString();
               Class.forName("com.mysql.jdbc.Driver");
               Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
               Statement stmt=conn.createStatement();
               String x="select * from studentsignup where studentrollno='"+stu_roll1+"'";
               ResultSet rs=stmt.executeQuery(x);
       
        //  response.sendRedirect("home_student.jsp");

               while(rs.next())
           {      
              sturoll=rs.getString("studentrollno");
              stuname=rs.getString("studentname");
              stuemail=rs.getString("studentemail");             
              studegree=rs.getString("studentdegree");
              studegree=rs.getString("studentdegree");
              stubranch=rs.getString("branch");
              stubatch=rs.getString("batch");
              stuphno=rs.getString("studentphno");
              stugender=rs.getString("studentgender");
              stutwe=rs.getString("twe");
              stuten=rs.getString("ten");
              stusem1=rs.getString("sem1");
              stusem2=rs.getString("sem2");
              stusem3=rs.getString("sem3");
              stusem4=rs.getString("sem4");
              stusem5=rs.getString("sem5");
              stusem6=rs.getString("sem6");
              stusem7=rs.getString("sem7");
              stusem8=rs.getString("sem8");
              stucgpa=rs.getString("cgpa");
              stubacklog=rs.getString("backlog");
           }
           
           }
           catch(Exception e){
           out.print(e);
           }
       %>
       
       <form action="studentprofile">
            <div>
                <table style="margin-top:50px;margin-left:20px">
                    <tr>
			<th style="text-align:center"><u><b><h2>UPDATE CHANGES FORM</h2></u></b><th>
                    </tr>
		     <tr>
			<td></td><td></td>
			<td>ROLL NO:</td>
                        <td>   <label><%=sturoll%></label></td>
                        
                    </tr>
                    <tr>
			<td></td><td></td>
			<td>Enter Name:</td>
                        <td><input type="text" value=<%=stuname%> name="t1"> </td>
                    </tr>
		
                   
		
                    <tr>
			<td></td><td></td>
			<td>Enter Email:</td>
			<td><input type="text" value=<%=stuemail%> name="t3"> </td>
                    </tr>
		
                    <tr>
			<td></td><td></td>
			<td>Enter PhoneNo.:</td>
			<td><input type="text" value=<%=stuphno%> name="t4"> </td>
		
                    </tr>
                
                    <tr>
			<td></td><td></td>
			<td>Enter Degree:</td>
			<td><input type="text" value=<%=studegree%> name="t5"> </td>
                    </tr>
                
                    <tr>
			<td></td><td></td>
			<td>Enter your gender:</td>
			<td><input type="text" value=<%=stugender%> name="t6"> </td>
                    </tr>
		
		
                    <tr>
			<td></td><td></td>
			<td><input type="submit" value="Submit"></td>
                       
			<td></td>
                    </tr>
                     <tr>
			<td></td><td></td>
			
                     <td><button class="btn btn-danger"><a href="contactf_stud.jsp">send any query to tpo ragarding any changes then click here</a></button></td>
			<td></td>
                    </tr>
                     
                </table>
            </div>
       </form>
 
    </body>
</html>
