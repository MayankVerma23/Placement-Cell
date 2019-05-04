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
          
    </head>
    
    <body>
       

        
        <%!String com_name="",com_email="",com_phno="",com_location="",com_Password="",com_status="",com_email1="";%>
          
       <%   
               HttpSession hs=request.getSession();

               com_email=hs.getAttribute("company_email").toString();
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
             
               
       <form action="companyprofile" method="post">
        <div>
        <table style="margin-top:50px;margin-left:20px">
		<tr></tr><tr></tr><tr></tr><tr>
			<td></td><td></td>
			<th style="text-align:center"><u><b><h2>UPDATE CHANGES FORM<h2></u></b><th>
		</tr>
                <tr>
			<td></td><td></td>
			<td>EMAIL:</td>
                        <td>  <label><%=com_email1%> </label></td>			
		</tr>
		<tr>
			<td></td><td></td>
			<td>Enter Name:</td>
			<td><input type="text" value=<%=com_name%> name="t1"> </td>
		</tr>
		
		<tr>
			<td></td><td></td>
			<td>PHONE NO.:</td>
			<td><input type="text" value=<%= com_phno%> name="t3"> </td>
		</tr>
		<tr>
			<td></td><td></td>
			<td>COMPANY LOCATION:</td>
			<td><input type="text" value=<%=com_location%> name="t4"> </td>
		</tr>
                
		<tr>
			<td></td><td></td>
			<td><input type="submit" value="SUBMIT UPDATE"></td>
			<td></td>
		</tr>
	</table>
       </div>
       </form>  
    </body>
</html>
