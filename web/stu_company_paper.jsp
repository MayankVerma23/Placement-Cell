<%-- 
    Document   : stu_company_paper
    Created on : 9 Apr, 2019, 11:41:37 PM
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
       
         <%!String pn="",im="",rolno="";%>
     
       
         <%
            HttpSession hs=request.getSession();
         %>
          <%
         try{      
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement st=con.createStatement();
         String x1="Select * from tpo_image";
         ResultSet rs=st.executeQuery(x1);
         while(rs.next())
         {
         
           im=rs.getString("file_name");
         }
        
         %>
             
           <!--  <h1><%=im%></h1>-->
             <img src="tpo_image/<%=im%>"  height="500" width="500" align="center">
             <!--<object data="image/ height="500" width="1300">-->
          
           
           <%

            }
            catch(Exception ex)
                {
                out.println(ex);
                }
            %>
        
    </body>
</html>

