

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <%!String name="",email="",sub="",reply="",ids="",phno=""; %>
        
        <%
                
           HttpSession ticketc = request.getSession();
           ids=ticketc.getAttribute("ct_id").toString();
           //name=ticket.getAttribute("c_id").toString();
           sub=ticketc.getAttribute("ct_sub").toString();
           reply=request.getParameter("rback");
          
           HttpSession hs = request.getSession();
            name=hs.getAttribute("company_name").toString();
            email=hs.getAttribute("company_email").toString();
            phno=hs.getAttribute("company_phno").toString();
          
        %>
                 <%
                 Date d;
                 String Str,Str1;
                 Calendar c=Calendar.getInstance();
                    d=c.getTime();
                    SimpleDateFormat sdf=new SimpleDateFormat("E dd MMMM yyyy ");
                    Str=sdf.format(d);
                    sdf=new SimpleDateFormat("hh:mm:ss");
                    Str1=sdf.format(d);
                    
                  
                    
                 %>        
        <%
            String x;
            try{
                  Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement stmt=con.createStatement();
         x="insert into queries values('"+ids+"','"+name+"','"+email+"','company','"+sub+"','"+reply+"','"+Str+" at "+Str1+"','"+phno+"','1')";
         
         stmt.executeUpdate(x);
            }
            catch(Exception ex)
            {
                out.print(ex);
            }
            response.sendRedirect("company_ticket.jsp?id="+ids);
         %>
    
</html>
