<style>
    option{
        color:black;
    }
</style>

          <select ID="branch" class="text" name="branch">
            <option selected>BRANCH</option>
        <%

                String degree=request.getParameter("degree");

         if(degree.equals("Btech")) {        
           %>
            
              <option>CSE</option>
              <option>CIVIL</option>
              <option>ECE</option>
              <option>MCE></option>
          
           <%
             }
            else if(degree.equals("MBA")){
          %>  
       
              <option>MBA</option>       
          
               <%
     
                 }
                else if(degree.equals("MCA")){
                %> 
       
        
              <option>MCA</option>
             
               <%
     
                 }
            else if(degree.equals("BCA")){
               %>  
           <option>BCA></option>
                 <%
     
   }
          %>  
     </select> 
        
