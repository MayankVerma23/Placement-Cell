<%-- 
    Document   : unplaced_receive
    Created on : 2 Apr, 2019, 6:01:11 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <!--Database connectivity-->
      
        
        <%!
                String idd = "",  stu_roll ;
                String status = "unplaced";
            %>
            
      <%
                    idd = request.getParameter("studentid");
            %>
            
            <%  //Create the preparedstatement(s)
                
                
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         
                Statement fetchStatement = conn.createStatement();
                  String x = "select * from interestedstudents where id='"+idd+"' ";
                   ResultSet rs = fetchStatement.executeQuery(x);
                    while(rs.next()){
                 

                            
                      
                        
                       stu_roll =rs.getString("student_rollno");
                        
                       
                  
                                       
                    } 
                String y = "update interestedstudents set status='"+status+"' where id='"+idd+"'";
                fetchStatement.executeUpdate(y);
                 String z = "update studentsignup set studentstatus='"+status+"' where studentrollno='"+stu_roll+"'";
                 fetchStatement.executeUpdate(z);
               response.sendRedirect("selected_candidates.jsp");
            %>       
    </body>
</html>
