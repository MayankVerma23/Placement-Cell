<%-- 
    Document   : index_articles
    Created on : Apr 14, 2019, 2:48:30 PM
    Author     : Divjot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

        <style>
            .body{
                background-color: #ffffff;
            }
            .equal-height-container {
                
  max-width: 1200px;
  margin: 0 auto;
  
  margin: 40px auto 0 auto;
 
}
.equal-height-container h1,h3,h7{
    color: #434343;
        font-weight: 700;
}
.equal-height-container h7{
    padding-left: 10px;
}
.equal-height-container p,h8{
    opacity: 0.9;
   
}
.equal-height-container h8{
    opacity: 0.9;
    font-weight: 500;
    color:#808080;
}

.first {
  background-color: #FFF;
  
  flex-basis: 50%;
  margin-bottom: 40px;
  
}

.second {
  
  flex-basis: 40%;
  display: flex;
  flex-direction: column;
  
}




.second-b {
  
  flex:1;
}
.second-b h2 {
  
  font-weight: 700;
}


.second-a-1{
    
    flex:0.4;
}

.second-a-2{
    
    flex:0.6;
}

  .second-b{
          display: flex;
          flex-direction: column;
    justify-content: space-between;
  }

  .second-a-body{
      margin-bottom: 40px;
  }
  
    .second-b-body{
      margin-bottom: 40px;
  }
  
.second-b-1{
    
    flex:0.4;
}

.second-b-2{
    
    flex:0.6;
}

.link a{
   
    color:#434343;
   
}

.link a:hover{
    text-decoration: none;
    color:#63A2BD;
}

.first img{
    max-width: 100%;
    
}

.second-a img{
    max-width: 100%;
        
}
.second-b img{
    max-width: 100%;
        
}
@media (min-width: 900px) {
  .equal-height-container {
    display: flex;
    justify-content: space-between;
  }
  .second-a-body{
      display: flex;
  flex-direction:row; 
    
}
  .second-b-body{
      display: flex;
  flex-direction:row; 
    
}
}
</style>
    </head>
    <body>
        <h4 class="equal-height-container">News and Updates</h4>
        <div class="equal-height-container" style="margin-bottom:100px;">
            
  <div class="first">
              <% String title="",paragraph="",author="",date="",imglink="";
              int aid;
             try{ 
           
         Class.forName("com.mysql.jdbc.Driver");
         Connection conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement st=conn.createStatement();
         String x1="Select sno,title,left(paragraph,300)as words,author,date,imglink from articles order by sno DESC limit 3";
        int i=0;
         ResultSet rs=st.executeQuery(x1);
         while(rs.next())
         {
             aid=rs.getInt("sno");
            title=rs.getString("title");
            paragraph=rs.getString("words");
            author=rs.getString("author");
            date=rs.getString("date");
            imglink=rs.getString("imglink");
          
           
            if(i==0){
                 %>
      <h1 ><%=title%></h1>
      <h7><%=date%></h7><h8 style="padding-left: 20px"><%=author%></h8>
      <img style="margin-top:50px;" src="<%=imglink%>">
      <p style="margin-top: 55px; padding: 15px;"><%=paragraph%>...</p>
      <h6 class="link" style="margin-top:20px; padding-left: 15px;"><a href="article.jsp?aid=<%=aid%>">Read More</a></h6>
     </div>
              <%
               i=1;   }
else if(i==1){
              %>
  <div class="second">
          <div class="second-a">
              <h2 style="font-weight: 700;"><%=title%></h2>
              <span style="display:inline;"><h7><%=date%></h7><h8 style="padding-left: 20px"><%=author%></h8></span>
                 <div class="second-a-body">
                 <div class="second-a-1"><img style="margin-top:50px;" src="<%=imglink%>"></div>
                 <div class="second-a-2"><p style="margin-top:40px; margin-left: 10px;"><%=paragraph%>... </p>
                 <h6 class="link" style="margin-top:20px; margin-left: 10px;"><a href="article.jsp?aid=<%=aid%>">Read More</a></h6></div>
                 </div>
    </div>
      <%-- <div class="second-a" >
          <h2 style="font-weight: 700;"><%=title%></h2>
                 <h7><%=date%></h7><h8 style="padding-left: 20px"><%=author%></h8>
                 <img style="margin-top:50px;" src="<%=imglink%>">
                 <p style="margin-top:40px"><%=paragraph%>... </p>
                 <h6 class="link"><a href="article.jsp?aid=<%=aid%>">Read More</a></h6>
        </div>--%>
                <%i=2;}
        else{ %>
          <div class="second-b">
              <h2 style="font-weight: 700;"><%=title%></h2>
              <span style="display:inline;"><h7><%=date%></h7><h8 style="padding-left: 20px"><%=author%></h8></span>
                 <div class="second-b-body">
                 <div class="second-b-1"><img style="margin-top:50px;" src="<%=imglink%>"></div>
                 <div class="second-b-2"><p style="margin-top:40px; margin-left: 10px;"><%=paragraph%>... </p>
                 <h6 class="link" style="margin-top:20px; margin-left: 10px;"><a href="article.jsp?aid=<%=aid%>">Read More</a></h6></div>
                 </div>
    </div>
        <%}}}
        catch(Exception ex){out.print(ex);}%>
    </div>
</div>
    </body>
</html>
