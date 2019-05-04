<%-- 
    Document   : apply_job
    Created on : 31 Mar, 2019, 12:42:01 PM
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
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
           
        <style>
            table
            {
                width : 100%;
            }
            
            td
            {
                border : 2px solid black;
                padding : 20px;
                width : 200px;
                height : 100px;
            }
                
            th
            {
                border : 2px solid black;
                text-align: center;
            }

        </style>
        
       <script>
        function apply(x){
            window.location.href = "apply_receive.jsp?companyid="+x;
        } 
        </script>
    </head>
    
    <body>
      
        <!--Start of Navbar Section-->
        <%@include file = "header_student.jsp"%>
        <!--End of Navbar Section-->
        
    <section> 
       <table>
                <tr>
                    <th>COMPANY NAME</th>
                    
                    <th>NO. OF BACKLOG</th>
                    <th>DEGREE PERCENTAGE</th>
                    <th>SKILLS</th>
                    <th>SELECTION PROCEDURE</th>
                    <th>STUDENTS BATCH</th>
                    <th>JOB PROFILE</th>
                    <th>PACKAGE</th>
                    <th>JOB LOCATION</th>
                    <th>CHOOSE COMPANY</th>
                </tr>
                
                <%! String desire_company="",req_c1="",req_c2="",req_c3="",req_b1="",req_b2="",req_b3="",req_b4="",
                      roll_no="",stu_branch="",stu_deg="",req_batch="",stu_batch="";%>
                <%    
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");   
                String fetchQuery = "select * from companyrequirements";
                Statement fetchStatement = con.createStatement();
                ResultSet rs = fetchStatement.executeQuery(fetchQuery);
               
                while(rs.next()){
    
                req_c1 =rs.getString("requiredcourse1");
                req_c2 =rs.getString("requiredcourse2");
                req_c3 =rs.getString("requiredcourse3");
                req_b1 =rs.getString("requiredbranch1");
                req_b2 =rs.getString("requiredbranch2");
                req_b3 =rs.getString("requiredbranch3");
                req_b4 =rs.getString("requiredbranch4");
                req_batch =rs.getString("requiredbatch");
           
                                       
             } 
                HttpSession hs=request.getSession();
                roll_no=hs.getAttribute("stu_roll").toString();
                String fetchQuery1 ="select * from studentsignup where studentrollno='"+roll_no+"'";
                Statement fetchStatement1 = con.createStatement();
                ResultSet rs1 = fetchStatement1.executeQuery(fetchQuery1);
                while(rs1.next()){                    
                stu_batch=rs1.getString("batch");
                stu_deg=rs1.getString("studentdegree");
                stu_branch=rs1.getString("branch");
          } 
                if(stu_deg.equals(req_c2)||stu_deg.equals(req_c3)){
                String fetchQuery2 = "select * from companyrequirements where (requiredcourse2='"+stu_deg+"' or requiredcourse3='"+stu_deg+"') and requiredbatch='"+stu_batch+"'";
                Statement fetchStatement2 = con.createStatement();
                ResultSet rs2 = fetchStatement2.executeQuery(fetchQuery2);
                while(rs2.next()){
                %>

            <tr>                  
                <td><%=rs2.getString("companyname")%></td>             
                <td><%=rs2.getString("requiredbacklog")%></td>
                <td><%=rs2.getString("requiredpercentage")%></td>
                <td><%=rs2.getString("requiredskill")%></td>
                <td><%=rs2.getString("requiredprocedure")%></td>
                <td><%=rs2.getString("requiredbatch")%></td>
                <td><%=rs2.getString("job_profile")%></td>
                <td><%=rs2.getString("package")%></td>
                <td><%=rs2.getString("job_location")%></td>
                <td><button class="btn btn-danger" onclick="apply(<%=rs2.getString("id")%>)">APPLY</button></td>
            </tr>
                                       
            <% } }
             else {
                String fetchQuery3 = "select * from companyrequirements where (requiredbranch1='"+stu_branch+"' or requiredbranch2='"+stu_branch+"' or requiredbranch3='"+stu_branch+"' or requiredbranch4='"+stu_branch+"') and requiredbatch='"+stu_batch+"'";
                Statement fetchStatement3 = con.createStatement();
                ResultSet rs3 = fetchStatement3.executeQuery(fetchQuery3);
                while(rs3.next()){
                %>

            <tr>                  
                <td><%=rs3.getString("companyname")%></td>
                <td><%=rs3.getString("requiredbacklog")%></td>
                <td><%=rs3.getString("requiredpercentage")%></td>
                <td><%=rs3.getString("requiredskill")%></td>
                <td><%=rs3.getString("requiredprocedure")%></td>
                <td><%=rs3.getString("requiredbatch")%></td>
                <td><%=rs3.getString("job_profile")%></td>
                <td><%=rs3.getString("package")%></td>
                <td><%=rs3.getString("job_location")%></td>
                <td><button class="btn btn-danger" onclick="apply(<%=rs3.getString("id")%>)">APPLY</button></td>
            </tr>
            <%} } %>
        </table>        
    </section> 
           
    </body>
</html>
