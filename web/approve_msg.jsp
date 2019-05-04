<%-- 
    Document   : approve_msg.jsp
    Created on : 28 Mar, 2019, 10:24:16 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <!--Database connectivity-->
         <%@include file = "database_connection.jsp"%> 
          <%!
                String idd = "";
                String status = "accept";
            %>
            
            <%
                    idd = request.getParameter("id");
            %>
            
            <%  //Create the preparedstatement(s)
                Statement fetchStatement = conn.createStatement();
                String y = "update companysignup set status='"+status+"' where companyid='"+idd+"'";
                fetchStatement.executeUpdate(y);
            %>
         <!--Save msg and date in database for approved compines--> 
            <%
                String msg = request.getParameter("myText");
                String companyid = request.getParameter("id");
                String date = request.getParameter("date");
                fetchStatement = conn.createStatement();
                String z = "insert into approved_comp value(null,'"+msg+"','"+companyid+"','"+date+"')";
                fetchStatement.executeUpdate(z);
                out.print("<script>window.close();</script>");
             %>
    </body>
</html>