<%-- 
    Document   : pic
    Created on : 28 Mar, 2019, 7:52:16 PM
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
        <title>JSP Page</title>
    </head>
    <body>
         <%!String roll =""; %>
         <%!String pn="",im="",rolno="";%>
     
       
         <%
            HttpSession hs=request.getSession();
            rolno=hs.getAttribute("stu_roll").toString();%>
          <%
         try{
           
         Class.forName("com.mysql.jdbc.Driver");
         Connection conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement st=conn.createStatement();
         String x1="Select * from student_image where rollno='"+rolno+"'";
         ResultSet rs=st.executeQuery(x1);
         while(rs.next())
         {
           pn=rs.getString("rollno");
           im=rs.getString("file_name");
         }
         if(rolno.equals(pn)){
             %>
             
           <!--  <h1><%=im%></h1>-->
             <img src="student_images/<%=im%>"  height="200" width="180" align="right">
             <!--<object data="image/ height="500" width="1300">-->
          
           
        <%
         
            }
         
            }
            catch(Exception ex)
                {
                out.println(ex);
                }
            %>
        
    </body>
</html>
