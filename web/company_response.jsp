<%-- 
    Document   : company_response
    Created on : 29 Mar, 2019, 10:06:29 PM
    Author     : HP
--%>
<%@page import="java.util.Date;" %>
<%@page import="java.text.SimpleDateFormat;" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>COMPANY RESPONSE</title>

        <style>

            body
            {
                margin:0;
                padding:0;
                font-family:sans-serif;
                <%--background:url(background_images/balls3.jpg);--%>
                background-size:cover;
            }
            #container-design{
                background-color: wheat;
                padding:30px 60px 30px 60px;;

                border: 2px solid black;
                text-align:center;
            }

        </style>




        <script>
            function valiDate() {
                var date = new Date(document.getElementById("mydate").value);
                var today = new Date();


                var dates = {
                    convert: function (d) {
                        // Converts the date in d to a date-object. The input can be:
                        //   a date object: returned without modification
                        //  an array      : Interpreted as [year,month,day]. NOTE: month is 0-11.
                        //   a number     : Interpreted as number of milliseconds
                        //                  since 1 Jan 1970 (a timestamp) 
                        //   a string     : Any format supported by the javascript engine, like
                        //                  "YYYY/MM/DD", "MM/DD/YYYY", "Jan 31 2009" etc.
                        //  an object     : Interpreted as an object with year, month and date
                        //                  attributes.  **NOTE** month is 0-11.
                        return (
                                d.constructor === Date ? d :
                                d.constructor === Array ? new Date(d[0], d[1], d[2]) :
                                d.constructor === Number ? new Date(d) :
                                d.constructor === String ? new Date(d) :
                                typeof d === "object" ? new Date(d.year, d.month, d.date) :
                                NaN
                                );
                    },
                    compare: function (a, b) {
                        // Compare two dates (could be of any type supported by the convert
                        // function above) and returns:
                        //  -1 : if a < b
                        //   0 : if a = b
                        //   1 : if a > b
                        // NaN : if a or b is an illegal date
                        // NOTE: The code inside isFinite does an assignment (=).
                        return (
                                isFinite(a = this.convert(a).valueOf()) &&
                                isFinite(b = this.convert(b).valueOf()) ?
                                (a > b) - (a < b) :
                                NaN
                                );
                    },
                    inRange: function (d, start, end) {
                        // Checks if date in d is between dates in start and end.
                        // Returns a boolean or NaN:
                        //    true  : if d is between start and end (inclusive)
                        //    false : if d is before start or after end
                        //    NaN   : if one or more of the dates is illegal.
                        // NOTE: The code inside isFinite does an assignment (=).
                        return (
                                isFinite(d = this.convert(d).valueOf()) &&
                                isFinite(start = this.convert(start).valueOf()) &&
                                isFinite(end = this.convert(end).valueOf()) ?
                                start <= d && d <= end :
                                NaN
                                );
                    }
                };

                if (dates.compare(date, today) !== 1) {
                    alert("Invalid Date!");
                    return false;
                } else
                    return true;

            }
        </script>

    </head>

    <body>
        <section>
            <%@include file = "header_company.jsp"%>
        </section>

        <section style="min-height:400px;">
            <div class="container" id="container-design" >
                <div style="margin:0 auto;min-height:300px;">
                    <%!String comp_email = "";%>
                    <%!String comp_id = "", comp_status = "", comp_message = "", comp_date = "";%>
                    <%            HttpSession hs = request.getSession();
                        comp_email = hs.getAttribute("company_email").toString();

                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                        Statement stmt = conn.createStatement();
                        String x = "select * from companysignup where companyemail='" + comp_email + "'";
                        ResultSet rs = stmt.executeQuery(x);
                        while (rs.next()) {
                            comp_status = rs.getString("status");
                            comp_id = rs.getString("companyid");
                        }

                        if (comp_status.equals("reject")) {

                            String z = "select * from message where companyid='" + comp_id + "'";
                            rs = stmt.executeQuery(z);
                            while (rs.next()) {
                                comp_message = rs.getString("message");

                            }
                    %>
                    <label style="font-size:20px;">TPO DO NOT ACCEPT YOUR REQUEST</label><br/>
                    <label style="font-size:20px;">REASON :-  <%=comp_message%></label><br/> 
                    <a href="contactf_company.jsp"  style="color:white;"><button class="btn btn-danger"> CONTACT US FOR ANY QUERY</button> </a>


                    <%   } else if (comp_status.equals("waiting")) {
                    %>
                    <label  style="font-size:20px;">TPO DO NOT GIVE RESPONSE TO YOUR REQUEST YET</label><br/>
                    <label  style="font-size:20px;">PLEASE WAIT</label><br/>
                    <a href="contactf_company.jsp"  style="color:white;"><button class="btn btn-danger"> CONTACT US FOR ANY QUERY</button> </a>

                    <% } else if (comp_status.equals("accept")) {
                        String y = "select * from approved_comp where companyid='" + comp_id + "'";
                        rs = stmt.executeQuery(y);
                        while (rs.next()) {
                            comp_message = rs.getString("msg");
                            comp_date = rs.getString("date");
                        }

                    %>

                    <label  style="font-size:20px;">Message :- <%=comp_message%></label><br/>
                    <label style="font-size:20px;">Date :-<%=comp_date%></label><br/><br/>
                    <label style="font-size:20px;">NOW YOU CAN SEND US REQUIRMENT FOR JOB</label><br/> 
                    <a href="accepted_comp_requirements.jsp"  style="color:white;"><button class="btn btn-danger"> ADD REQUIREMENTS</button></a>
                </div>
                <%}%>

            </div>

        </section>

        <section>
            <%@include file = "footer-company.jsp"%>
        </section>
    </body>
</html>
