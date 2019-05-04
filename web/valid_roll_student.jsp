
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
        <%!String rollno="",r="";%>
       
        <%
            
         try
             
            {
                String roll=request.getParameter("rol");
                System.out.println(roll);
              
                
         Class.forName("com.mysql.jdbc.Driver");
         Connection con1=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         java.sql.Statement st1=con1.createStatement();
         String x11=" select * from studentsignup where studentrollno='"+roll+"'" ;
        ResultSet rs=st1.executeQuery(x11);
        while(rs.next())
        {
           rollno=rs.getString("studentrollno");
              r=rs.getString("studentname");
        }
          
             if(roll.equals(rollno)){
                 
                 %>
                 <span> Roll Number Already Exists </span>
                 <%
             }
              else{
                %>
                 <span> Available </span>
                 <%
}
            
      
            }
         catch(Exception ex)
         {
          out.println(ex);   
         }
   
          %>  