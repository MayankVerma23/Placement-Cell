<%-- 
    Document   : tpo_response
    Created on : 2 May, 2019, 11:29:13 AM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>ACCEPTED COMPANY REQUIREMENTS</title>

        <style>
            .container{
                padding: 0px !important;
            }
        </style>
        <script>

            function onDegreeChange() {
                var deg = document.getElementById("degree").value;
                $('#branch1').toggle();

            }

        </script>
    </head>

    <body>
        <div class="container">

            <section style="background-color:#E9E8E2;padding: 20px;margin-top: 60px;border:2px solid black">
                <div class="row" >
                    <div class="col-md-12">
                        <h1 style="text-align: center;color:black">COMPANY SIGNUP</h1>
                    </div>
                </div>

                <div class="row">
                    <h2>ELIGIBILITY REQUIREMENTS</h2>
                    <form action="company_response_2.jsp" onsubmit="return valiDate()" method="post">
                        <div class="col-md-12">  
                            <div class="form-group">
                                <label >ELIGIBLE COURSES</label><br><br>
                                <input type="checkbox" name="course1" class="form-control" id="degree"  value="B.Tech"  onchange="onDegreeChange()"><span id="s1">B.Tech</span> </div>
                            <input type="checkbox" name="course2" class="form-control" value="BCA" ><span id="s1">BCA</span></div>
                        <input type="checkbox" name="course3" class="form-control" value="MBA" ><span id="s1">MBA</span></div>


        </div>

        <div class="form-group" >
            <div class="form-control" id="branch1" hidden="">
                <label style="margin-bottom: 10px;">ELIGIBLE BRANCHES</label><br><br>
                <input type="checkbox" name="branch1"  value="CSE" ><span id="s1">CSE</span> <br>
                <input type="checkbox" name="branch2"  value="ME" ><span id="s1">ME</span><br>
                <input type="checkbox" name="branch3"  value="CIVIL"><span id="s1">CIVIL</span><br>
                <input type="checkbox" name="branch4"  value="EE"><span id="s1">EE</span><br>
            </div>
        </div>

        <div class="form-group">
            <input type="text" name="backlog" class="form-control" required="">
            <label>NO. OF BACKLOG ALLOW</label>
        </div>

        <div class="form-group">
            <input type="text" name="percentage" class="form-control" required="">
            <label>DEGREE CGPA</label>
        </div>

        <div class="form-group">
            <input type="text" name="skill" class="form-control" required="">
            <label>SKILLS</label>
        </div>

        <div class="form-group">

            <input type="text" name="procedure" class="form-control" required="">
            <label>SELECTION PROCEDURE</label>

        </div>

        <div class="form-group">


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

        <div class="form-group">
            <input type="text" name="job" required>
            <label>JOB PROFILE</label>
        </div>

        <div class="form-group">
            <input type="text" name="package" required>
            <label>PACKAGE</label>
        </div>

        <div class="form-group">
            <input type="text" name="job_location" required>
            <label>JOB LOCATION</label>
        </div>


        <div class="form-group">
            <input type="date" name="date" id="mydate"  required>

        </div>

        <INPUT TYPE="radio" name="radios" VALUE="Incampus" CHECKED><span id="s1" style="margin-right:10px;">Incapmus</span>
        <INPUT TYPE="radio" name="radios" VALUE="Incompus & offcampus"><span id="s1">offcampus</span><br>


        <input type="submit"  value="Submit">

    </form>
</div>
</section>
</div>
</body>


</html>