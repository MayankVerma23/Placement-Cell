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
           
          </head>
    
    <body >
          <%!String stu_roll1="",sturoll="",stuname="",stuemail="",studegree="",stuphno="",stugender="",stupass="";%>
          
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
              stuphno=rs.getString("studentphno");
              studegree=rs.getString("studentdegree");
              stugender=rs.getString("studentgender");
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
			<th style="text-align:center"><u><b><h2>UPDATE CHANGES FORM<h2></u></b><th>
                    </tr>
		
                    <tr>
			<td></td><td></td>
			<td>Enter Name:</td>
			<td><input type="text" value=<%=stuname%> name="t1"> </td>
                    </tr>
		
                    <tr>
			<td></td><td></td>
			<td>Enter ROLL NO:</td>
			<td><input type="text" value=<%=sturoll%> name="t2"></td>
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
                </table>
            </div>
       </form>
 
    </body>
</html>
