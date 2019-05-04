<%-- 
    Document   : article
    Created on : Apr 15, 2019, 4:54:10 PM
    Author     : Divjot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Allerta" />
        <style>
            
          
                
          
        .article {
             
         max-width: 900px;
         margin: 0 auto;
  
         margin: 40px auto 0 auto;
         display: flex;
         flex-direction: column;
         
         align-items: center;
        }    
        .article img{
            max-width: 100%;
        }
              .article-body {
             
         max-width: 650px;
         margin: 0 auto;
  
         margin: 40px auto 0 auto;
         display: flex;
         flex-direction: column;
         
         align-items: flex-start;
        } 
        .article-body h1,h3,h6{
    color: #1b1d1e;
        font-weight: 700;
}
.article-body h6{
    padding-left: 10px;
}
.article-body,.nextarticle p{
   
    opacity: 0.8;
    font-size: 20px;
   
}
.article-body h6{
    
    font-weight: 500;
    color:#1b1d1e;
}



.more-articles {
  max-width: 95%;
  margin: 40px auto 0 auto;
}

.nextarticle {
 
  box-sizing: border-box;
  margin-bottom: 20px;
  flex-basis: 30%;
}
.nextarticle img {
    max-width: 100%;
}

.nextarticle h4{
    font-weight: 700;
}
.link{
    margin-top: 30px;
}
.link a{
   
    color:#434343;
    
}

.link a:hover{
    text-decoration: none;
    color:#63A2BD;
}
@media (min-width: 900px) {
  .more-articles {
    display: flex;
    justify-content: space-between;
  }
}
.author{
    font-size: 13px;
}
        </style>
    </head>
    <body>
         <%@include file="navbar_index.jsp"%>
         <div class="article" style="margin-top:100px;" >
                      <% String title="",paragraph="",author="",date="",imglink="";
                      int id;
                      id=Integer.parseInt(request.getParameter("aid"));
                              
                          
             try{ 
           
         Class.forName("com.mysql.jdbc.Driver");
         Connection conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement st=conn.createStatement();
         String x1="Select * from articles where sno='"+id+"'";
       
         ResultSet rs=st.executeQuery(x1);
         while(rs.next())
         {
             
            title=rs.getString("title");
            paragraph=rs.getString("paragraph");
            author=rs.getString("author");
            date=rs.getString("date");
            imglink=rs.getString("imglink");
            %>
        <img src="<%=imglink%>">
        </div>
        <div class="article-body " style="margin-bottom:200px;">
                        <h1><%=title%></h1>
                        <h6 class="author"><%=author%> &nbsp; &nbsp; <%=date%></h6>
                      
            <p style="margin-top: 35px; padding:15px;">
                
                <%=paragraph%>
                </p>
        </div>
        <div class="more-articles" style="margin-bottom:200px;">
            <%}
           String x2="Select sno,title,left(paragraph,200)as words,author,date,imglink from articles where sno!='"+id+"'  order by sno DESC limit 3";
           int aid;
           rs=st.executeQuery(x2);
           

          int i=0; 
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
  <div class="nextarticle">
    <img src="<%=imglink%>">
      <h4 style="margin-top:20px;"><%=title%></h4>
      <h6 class="author"><%=date%> &nbsp; &nbsp; <%=author%></h6>
      <p style="margin-top: 20px"><%=paragraph%>...</p>
    <h6 class="link"><a href="article.jsp?aid=<%=aid%>">Read More</a></h6>
  </div>
    <%i=1;}
else if(i==1){
    %>
  <div class="nextarticle">
      <img src="<%=imglink%>">
    <h4 style="margin-top:20px;"><%=title%></h4>
    <h6 class="author"><%=date%> &nbsp; &nbsp; <%=author%></h6>
    <p style="margin-top: 20px"><%=paragraph%>...</p>
  <h6 class="link"><a href="article.jsp?aid=<%=aid%>">Read More</a></h6>
  </div>
  <%i=2;}
else{
  %>
  <div class="nextarticle">
      <img  src="<%=imglink%>">
    <h4 style="margin-top:20px;"><%=title%></h4>
    <h6 class="author"><%=date%> &nbsp; &nbsp; <%=author%></h6>
    <p style="margin-top: 20px"><%=paragraph%>...</p>
  <h6 class="link"><a href="article.jsp?aid=<%=aid%>">Read More</a></h6>
  </div>
</div>
  <%}}}
catch(Exception ex)
{
out.print(ex);
}
  %>
                 <%@include file = "newsletter_1.jsp"%>
       <%@include file = "footer_index.jsp"%>
    </body>
</html>
