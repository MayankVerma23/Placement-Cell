<%-- 
    Document   : signup
    Created on : 7 Mar, 2019, 7:20:20 PM
    Author     : My Lappy
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Registration Student</title>

        <style>

            .affix {
                -webkit-transition:padding 0.2s ease-out;
                -moz-transition:padding 0.2s ease-out;  
                -o-transition:padding 0.2s ease-out;         
                transition:padding 0.2s ease-out;
            }

            .affix-top {
                /* navbar style at top */
                background:transparent !important;
                border-color:transparent !important;
                padding: 15px;
                -webkit-transition:all 0.5s ease;
                -moz-transition:all 0.5s ease; 
                -o-transition:all 0.5s ease;         
                transition:all 0.5s ease;  
            }

            .affix-top .navbar-collapse {
                border-color:transparent;
                box-shadow:initial;
            }
            .affix
            {
                color: black !important;
                height: 65px;
                padding-right: 5px;
            }

            .navbar{
                border: 1px solid transparent !important;
               
                padding: 0px 10px 0px 0px !important;
                width:100%;
            }

            #nav-options{
                color:black;
                font-size: 25px; 
            }

            #nav-options:hover{
                color: red !important; 
            }

         table{
                border: 2px solid black;
               }
            
            .r1:hover{
                background-color: #add8e682;
            }

        </style>


    </head>

   <body>
            <section style="margin-top:5%;">

            <div id="exTab1" class="container">	
                <ul  class="nav nav-pills" style="margin-left:50px;">
                    <li class="active" style="width:50%;text-align:center;background-color:wheat;">
                        <a href="#1" data-toggle="tab" >Upcoming Companies</a>
                    </li>
                    <li style="width:49%;text-align:center; background-color:wheat;">
                        <a href="#2" data-toggle="tab" >You are suitable for</a>
                    </li>
                    </ul>

                <div class="tab-content clearfix">
                    <div class="tab-pane active" id="1">
                       <section style="min-height:500px;" class="container">
            <table class="table">

                <tr style="background-color:black;color:white;">
                    <th>COMPANY ID</th>
                    <th>COMPANY NAME</th>
                    <th>EMAIL</th>
                    <th>PHONE NO</th>
                    <th>LOCATION</th>
                </tr>

                <%! String status = "accept";%>
                <%    //Create the preparedstatement(s)
                    try {
                       
                        
                       
                        String fetchQuery1 = "select * from companysignup where status= '" + status + "'";
                       
                        ResultSet rs = fetchStatement.executeQuery(fetchQuery1);

                        while (rs.next()) {
                            
                %> 

                
                <tr class="r1">
                    <td><%=rs.getString("companyid")%></td>
                    <td><%=rs.getString("companyname")%></td>
                    <td><%=rs.getString("companyemail")%></td>
                    <td><%=rs.getString("companyphno")%></td>
                    <td><%=rs.getString("companylocation")%></td>
                </tr>
                <%

                        }
                    } catch (Exception ex) {
                        out.print(ex);
                    }
                %>
            </table>
        </section>
 
                    </div>
                    <div class="tab-pane" id="2">
                        <%@include file = "stu_apply.jsp"%>
                    </div>

                </div>
            </div>

        </section>
    </body>

</html>
