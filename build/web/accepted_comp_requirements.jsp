<%-- 
    Document   : student_registration
    Created on : 7 Mar, 2019, 7:20:46 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title id="title">STUDENT_REGISTER</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
       
        <script>

            function onDegreeChange() {
                var deg = document.getElementById("degree").value;
                $('#branch1').toggle();
            }

        </script>
    </head>
    <body>
        <section>
            <%@include file = "header_company.jsp"%>
        </section>

        <section style="background-color:#E9E8E2;padding: 20px;border:2px solid black">
            <div class="container" >
                <div class="row" >
                    <div class="col-md-12">
                        <h1 style="text-align: center;">ELIGIBILITY REQUIREMENTS</h1>
                    </div>
                </div>

                <div class="row">  
                    <div class="col-md-12">
                        <form action="company_response_2.jsp"  method="post">

                            <div class="form-group">
                                <label>ELIGIBLE COURSES</label>
                                <input type="checkbox" name="course1"  id="degree"  value="B.Tech"  onchange="onDegreeChange()"><span id="s1">B.Tech</span> 
                                <input type="checkbox" name="course2"  value="BCA" ><span id="s1">BCA</span>
                                <input type="checkbox" name="course3"  value="MCA" ><span id="s1">MCA</span>
                            </div>

                            <div class="form-group"> 
                                <label>ELIGIBLE BRANCHES</label>
                                <div id="branch1" hidden="">
                                    <input type="checkbox" name="branch1"  value="CSE" ><span id="s1">CSE</span>
                                    <input type="checkbox" name="branch2"  value="MCE" ><span id="s1">MCE</span>
                                    <input type="checkbox" name="branch3"  value="CIVIL"><span id="s1">CIVIL</span>
                                    <input type="checkbox" name="branch4"  value="ECE"><span id="s1">ECE</span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>NO. OF BACKLOG ALLOW</label>
                                <input type="text" name="backlog" class="form-control" required="">
                            </div>

                            <div class="form-group">
                                <label>DEGREE CGPA</label>
                                <input type="text" name="percentage" class="form-control" required="">
                            </div>

                            <div class="form-group">
                                <label>SKILLS</label>
                                <input type="text" name="skill" class="form-control" required="">
                            </div>     

                            <div class="form-group">
                                <label>SELECTION PROCEDURE</label>
                                <input type="text" name="procedure" class="form-control" required="">
                            </div>

                            <div class="form-group">
                                <label>SELECT BATCH</label>
                                <select class="form-control" name="batch" <!--class="b1"--> >
                                    <option value="">SELECT BATCH</option>
                                    <option value="2015">2015 passout</option>
                                    <option value="2016">2016 passout</option>
                                    <option value="2017">2017 passout</option>
                                    <option value="2018">2018 passout</option>
                                    <option value="2019">2019 passout</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>JOB PROFILE</label>
                                <input type="text" name="job" class="form-control" required="">
                            </div>

                            <div class="form-group">
                                <label>PACKAGE</label>
                                <input type="text" name="package" class="form-control" required="">
                            </div>

                            <div class="form-group">
                                <label>JOB LOCATION</label>
                                <input type="text" name="job_location" class="form-control" required="">
                            </div>

                            <div class="form-group">
                                <label>LAST DATE</label>
                                <input type="date" name="date"  id="mydate" class="form-control" required="">
                            </div>

                            <label>STUDENTS ALLOWED</label>
                            <INPUT TYPE="radio" name="campus" VALUE="Incampus" ><span id="s1">Incapmus</span>
                            <INPUT TYPE="radio" name="campus" VALUE="both"><span id="s1">BOTH</span>
                            
                            <div class="col-md-12" style="text-align: center">
                            <button  type="submit" class="btn btn-success" value="SEND" >SEND</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </section>

        <section>
            <%@include file = "footer-company.jsp"%>
        </section>
    </body>

   
</html>

