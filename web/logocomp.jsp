<%-- 
    Document   : logocomp
    Created on : 29 Mar, 2019, 10:57:15 PM
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
       
         <%!String pn="",im="",email1="";%>
     
       
         <%
            HttpSession hs=request.getSession();
            email1=hs.getAttribute("company_email").toString();%>
          <%
         try{
           
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement st=con.createStatement();
         String x1="Select * from comp_logo where email='"+email1+"'";
         ResultSet rs=st.executeQuery(x1);
         while(rs.next())
         {
           pn=rs.getString("email");
           im=rs.getString("file_name");
         }
         if(email1.equals(pn)){
             %>
             
           <!--  <h1><%=im%></h1>-->
             <img src="image/<%=im%>"  height="200" width="180" align="right">
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
