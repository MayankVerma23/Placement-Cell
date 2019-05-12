<%-- 
    Document   : profile_company
    Created on : 22 Mar, 2019, 12:50:03 PM
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
        <title >COMPANY_INFORMATION</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <%@include file = "header_company.jsp"%>

        <script>
            function changeprofile1()
            {
                //var r = confirm("R U SURE!! U WANT CHANGES IN PROFILE");
               // if (r == true) {
                    window.open('profile_company_1.jsp', 'popUpWindow', 'height=500,width=600,left=350,top=250,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
               // }
            }
            function uploadimag()
            {
               // var r = confirm("R U SURE!! U WANT CHANGES IN PROFILE");
               // if (r == true) {
                    window.open('image_company.jsp', 'popUpWindow', 'height=400,width=600,left=450,top=150,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
               // }
            }
        </script>
        <style>
            table{
                border:2px solid black;
                margin:10px;
            }

            .r1{
                background-color: #E3F2E1;
            }

            #d4{
                text-align:center;  

            }
        </style>
    </head>

    <body>
        <section>
        <%@include file = "pic.jsp"%>
        </section>
        
        <section style="min-height: 400px">
            <%
                HttpSession hss = request.getSession();
                String company_email = hss.getAttribute("company_email").toString();
                String imgemail = "";
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                    Statement stmt = con.createStatement();
                    String y = "select * from company_image where email='" + company_email + "'";
                    ResultSet rs1 = stmt.executeQuery(y);
                    while (rs1.next())
                    {
                        imgemail = rs1.getString("email");
                    }
                    if (!company_email.equals(imgemail)) { %>

            <!--Start of Navbar Section-->

             <div style="margin:10px;">
                <h4>Please upload image</h4><button class="btn btn-danger" type="button" onclick="uploadimag()">UPLOAD LOGO</button>
            </div>
             <%} else {

                    }
                } catch (Exception ex) {
                    out.print(ex);
                }
            %>

            <!--End of Navbar Section-->

          
            <%!String com_name = "", com_email = "", com_phno = "", com_location = "", com_Password = "", com_status = "";%>

            <%
                HttpSession hs1 = request.getSession();
                com_email = hs1.getAttribute("company_email").toString();
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                Statement stmt = conn.createStatement();
                String x = "select * from companysignup where companyemail='" + com_email + "'";
                ResultSet rs = stmt.executeQuery(x);
                while (rs.next()) {
                    com_name = rs.getString("companyname");
                    com_email1 = rs.getString("companyemail");
                    com_phno = rs.getString("companyphno");
                    com_location = rs.getString("companylocation");
                    com_status = rs.getString("status");
                }
            %>

            <table class="table table-hover" style="width:85%">

                    <tr class="r1">
                        <td><b>NAME</b></td>
                        <td><%=com_name%></td>
                    </tr>

                    <tr>
                        <td><b>EMAIL ID<b></td>
                        <td><%=com_email%></td>
                    </tr>

                    <tr class="r1">
                        <td><b>PHONE NO.</b></td>
                        <td><%=com_phno%></td>
                    </tr>

                    <tr>
                        <td><b>LOCATION</b></td>
                        <td><%=com_location%></td>
                    </tr>

                    <tr class="r1">
                        <td><b>STATUS</b></td>
                        <td><%=com_status%></td>
                    </tr>

                    <tr>
                        <td colspan="2">                                          
                        <button  class="btn btn-warning"  value="UPDATE PROFILE" onclick="changeprofile1()">Update Profile</button>
                        </td>
                    </tr>
            </table>
        </section>
            <section>
                <%@include file = "footer-company.jsp"%>
            </section>   

</body>
</html>
