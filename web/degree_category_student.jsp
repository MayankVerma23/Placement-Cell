<style>
    option{
        color:black;
    }
</style>
        <select class="form-control" ID="branch"  name="branch">
          
      
        <%

                String degree=request.getParameter("degree");

         if(degree.equals("BTech")) {        
           %>
            
              <option>CSE</option>
              <option>CIVIL</option>
              <option>ECE</option>
              <option>MCE></option>
          
           <%
             }
            else if(degree.equals("BCA")){
          %>  
       
              <option>BCA</option>       
          
               <%
     
                 }
                else if(degree.equals("MCA")){
                %> 
              <option>MCA</option>
             
               <%
     
                 }
         
     
  
          %>  
     </select> 
        
