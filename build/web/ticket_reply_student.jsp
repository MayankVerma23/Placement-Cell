

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
    
        <%!String name="",email="",sub="",reply="",ids="",phno="",roll_no; %>
        
        <%
                
           HttpSession tickets = request.getSession();
           ids=tickets.getAttribute("t_id").toString();
           name=tickets.getAttribute("s_id").toString();
           sub=tickets.getAttribute("t_sub").toString();
         
           reply=request.getParameter("rback");
              HttpSession hs = request.getSession();
            roll_no=hs.getAttribute("stu_roll").toString();
        
             try{ 
           
         Class.forName("com.mysql.jdbc.Driver");
         Connection con1=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement st=con1.createStatement();
         String x2="Select * from studentsignup where studentrollno='"+roll_no+"'";
         ResultSet rs=st.executeQuery(x2);
         while(rs.next())
         {
             name=rs.getString("studentname");
             email=rs.getString("studentemail");
             phno=rs.getString("studentphno");
         }
             }   
            catch(Exception ex){out.print(ex);}
            
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
         x="insert into queries values('"+ids+"','"+name+"','"+email+"','student','"+sub+"','"+reply+"','"+Str+" at "+Str1+"','"+phno+"','1')";
         
         stmt.executeUpdate(x);
            }
            catch(Exception ex)
            {
                out.print(ex);
            }
            response.sendRedirect("student_tickets.jsp?id="+ids);
         %>
    
</html>
