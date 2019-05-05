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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>JSP Page</title>

        <style>

            body
            {
                margin:0;
                padding:0;
                font-family:sans-serif;
                <%--background:url(background_images/balls3.jpg);--%>
                background-size:cover;
            }
            .box
            {
                margin: 0 auto;

                width:400px;
                padding:40px;
                background:rgba(0,0,0,.8);
                box-sizing:border-box;
                box-shadow: 0 15px 25px rgba(0,0,0,.5);
                border-radius:10px;

            }
            .box h2
            {
                margin:0 0 30px;
                padding:0;
                color:#fff;
                text-align:center;
            }
            .box .inputBox
            {
                position:relative;
            }
            .box .inputBox input
            {
                width: -webkit-fill-available;
                padding:10px 0;
                font-size:16px;
                color:#fff;
                letter-spacing:1px;
                margin-bottom:30px;
                border:none;
                border-bottom:1px solid #fff;
                outline:none;
                background:transparent;
            }
            .box .inputBox label
            {

                position:absolute;
                top:0;
                left:0;
                letter-spacing:1px;
                padding:10px 0;
                font-size:16px;
                color:#fff;
                pointer-events:none;
                transitions:.5s;

            }
            .box .inputBox input:focus~label,
            .box .inputBox input:valid~label
            {
                top:-18px;
                left:0;
                color:#03a9f4;
                font-size:12px;
            }

            .box input[type="submit"]
            {
                background:transparent;
                border:none;
                outline:none;
                color:#fff;
                background:#03a9f4;
                padding:10px 20px;
                cursor:pointer;
                border-radius:5px;
            }

            option {
                background: rgba(0,0,0,.8);;
                color: white;
            }
            .b1{
                text-align:center;
                width:100%;
                height:30px;
                font-size:16px;
                background: transparent;
                color: white;
            }
            #s1{
                color:#fff;
                font-size:22px;
                margin-left:3px;
            }
            .check{
                padding:0px;    
            }
        </style>

        <script>
            function onDegreeChange() {
                var deg = document.getElementById("degree").value;
                $('#branch1').hide();


                if (deg === 'B.Tech') {
                    $('#branch1').show();

                }

            }
        </script>


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


        <%!String com_email = "", com_status = "", status_values = "";%>
        <%
            HttpSession hs = request.getSession();
            com_email = hs.getAttribute("company_email").toString();

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
            Statement stmt = conn.createStatement();
            String x = "select * from companysignup where companyemail='" + com_email + "'";
            ResultSet rs = stmt.executeQuery(x);
            while (rs.next()) {
                com_status = rs.getString("status");
            }
        %>


        <%
            if (com_status.equals("reject")) {
        %>
        <div><h1>TPO DO NOT ACCEPT YOUR REQUEST</h1></div>
        <%}%>


        <%
            if (com_status.equals("waiting")) {
        %>
        <div><h2>TPO DO NOT GIVE RESPONSE TO YOUR REQUEST YET</h2></div>
        <div><h1>PLEASE WAITE</h1></div>
        <%}%>

        <%
            if (com_status.equals("accept")) {
        %>
        <!--TOGGLE-->
        <section style="margin-top:5%;">
            <div class="container">
                <div id="exTab1" class="container">	
                    <ul  class="nav nav-pills">
                        <li class="active" style="width:50%;text-align:center;">
                            <a  href="#1" data-toggle="tab" >UPLOAD REUIREMENTS THROUGH PDF</a>
                        </li>
                        <li style="width:49%;text-align:center;">
                            <a href="#2" data-toggle="tab" >UPLOAD REUIREMENTS THROUGH FORM</a>
                        </li>

                    </ul>

                    <div class="tab-content clearfix">
                        <div class="tab-pane active" id="1">
                            <!--pdf uploader-->
                            <script>
                                function demo()
                                {
                                    a1 = document.f1.t1.value;


                                    document.f1.action = "company_requirements?pn1=" + a1;
                                }
                            </script>
                            <form name="f1" enctype="multipart/form-data" method="post">
                                     <%!String email="";%>
                                <%String email = (String)hs.getAttribute("company_name"); %>
                                <br><input type="text" value="<%=email%>" name="t1"><br><br>
                                <p>UPLOAD REUIREMENTS<input type="file" name="i" required><br></p>
                                <p><input type="submit" value="Submit" onclick="demo()"></p>
                            </form>         



                        </div>
                        <div class="tab-pane" id="2">
                            <div class="box">

                                <h2>ELIGIBILITY REQUIREMENTS</h2>
                                <form action="company_response_2.jsp" onsubmit="return valiDate()" method="post">

                                    <div class="inputBox">
                                        <label >ELIGIBLE COURSES</label><br><br>
                                        <div class="check"> <input type="checkbox" name="course1" id="degree"  value="B.Tech"  onchange="onDegreeChange()"><span id="s1">B.Tech</span> </div>
                                        <div class="check"><input type="checkbox" name="course2"  value="BCA" ><span id="s1">BCA</span></div>
                                        <div class="check"><input type="checkbox" name="course3"  value="MBA" ><span id="s1">MBA</span></div>


                                    </div>

                                    <div class="inputBox" >
                                        <div id="branch1" hidden="">
                                            <label style="margin-bottom: 10px;">ELIGIBLE BRANCHES</label><br><br>
                                            <input type="checkbox" name="branch1"  value="CSE" ><span id="s1">CSE</span> <br>
                                            <input type="checkbox" name="branch2"  value="ME" ><span id="s1">ME</span><br>
                                            <input type="checkbox" name="branch3"  value="CIVIL"><span id="s1">CIVIL</span><br>
                                            <input type="checkbox" name="branch4"  value="EE"><span id="s1">EE</span><br>
                                        </div>
                                    </div>

                                    <div class="inputBox">
                                        <input type="text" name="backlog" required="">
                                        <label>NO. OF BACKLOG ALLOW</label>
                                    </div>

                                    <div class="inputBox">
                                        <input type="text" name="percentage" required="">
                                        <label>DEGREE CGPA</label>
                                    </div>

                                    <div class="inputBox">
                                        <input type="text" name="skill" required="">
                                        <label>SKILLS</label>
                                    </div>

                                    <div class="inputBox">

                                        <input type="text" name="procedure" required="">
                                        <label>SELECTION PROCEDURE</label>

                                    </div>

                                    <div class="inputBox">


                                        <select class="b1" name="batch" >
                                            <option value="">select Batch</option>
                                            <option value="2015">2015 passout</option>
                                            <option value="2016">2016 passout</option>
                                            <option value="2017">2017 passout</option>
                                            <option value="2018">2018 passout</option>
                                            <option value="2019">2019 passout</option>
                                        </select>

                                        <br>
                                        <br> <br>  
                                    </div>

                                    <div class="inputBox">
                                        <input type="text" name="job" required>
                                        <label>JOB PROFILE</label>
                                    </div>

                                    <div class="inputBox">
                                        <input type="text" name="package" required>
                                        <label>PACKAGE</label>
                                    </div>

                                    <div class="inputBox">
                                        <input type="text" name="job_location" required>
                                        <label>JOB LOCATION</label>
                                    </div>


                                    <div class="inputBox">
                                        <input type="date" name="date" id="mydate"  required>

                                    </div>

                                    <INPUT TYPE="radio" name="radios" VALUE="Incampus" CHECKED><span id="s1" style="margin-right:10px;">Incapmus</span>
                                    <INPUT TYPE="radio" name="radios" VALUE="Incompus & offcampus"><span id="s1">offcampus</span><br>


                                    <input type="submit"  value="Submit">

                                </form>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!--TOGGLE--> 





        <%}%>
    </body>
</html>
