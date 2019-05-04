
        <select class="form-control" ID="branch" name="batch">
          
          
        <%

                String degree=request.getParameter("degree");

         if(degree.equals("BTech")) {        
           %>
              <option>2017</option>
              <option>2018</option>
              <option>2019</option>
              <option>2020</option>
           <%
             }
        
                else if(degree.equals("MCA")){
                %> 
       
                <option>2016</option>
                <option>2017</option>
                <option>2018</option>
                <option>2019></option>
             
               <%
     
                 }
            else if(degree.equals("BCA")){
               %>  
                <option>2016</option>
                <option>2017</option>
                <option>2018</option>
                <option>2019></option>    
                 <%
     
   }
          %>  
     </select> 
        
