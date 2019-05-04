

          <select ID="branch"  class="text" name="batch">
            <option selected>BATCH</option>
        <%

                String degree=request.getParameter("degree");

         if(degree.equals("Btech")) {        
           %>
              <option>2017></option>
              <option>2018</option>
              <option>2019</option>
              <option>2020</option>
           <%
             }
            else if(degree.equals("MBA")){
          %>  
       
              <option>2016</option>
              <option>2017</option>
              <option>2018</option>
              <option>2019></option>   
          
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
        
