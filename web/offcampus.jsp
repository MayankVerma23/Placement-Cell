<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <style>
            .col-md-3{
                width:50%;
            }  

            input[type=radio] {
                border: 0px;
                width: 100%;
                height: 1em;
            }
        </style>


    </head>

    <body >
        <section>
            <%@include file = "index_navbar.jsp"%>
        </section>


        <section class="container" style="background-color:#ffffff4a;padding:20px !important;border:2px solid black">

            <div class="row" >
                <div class="col-md-12">
                    <h1 style="text-align: center;color:black">OFFCAMPUS SIGNUP</h1>
                </div>
            </div>

            <div class="row">    
                <form action="offcampus_signup.jsp" method="post" onsubmit="return checkpassword()" autocomplete="on" style="color: black;">
                    <div class="col-md-6">  

                        <div class="form-group">
                            <label for="name">NAME:</label>
                            <input type="text" name="name" class="form-control"  required>
                        </div>

                        <div class="form-group">
                            <label for="name">COLLAGE NAME:</label>
                            <input type="text" name="collage" class="form-control"  required>
                        </div>
                        <div class="form-group">
                            <label for="roll">ROLL NO:</label>
                            <input type="text" name="roll" class="form-control" id="roll" <%--onkeyup="validrollno()"--%> required >
                        </div>

                        <div id="na"></div>

                        <div class="form-group">
                            <label for="email">EMAIL:</label>
                            <input type="text" name="email" class="form-control"  required >
                        </div>

                        <div class="form-group">
                            <label for="SelectDegree">DEGREE :</label>
                            <select class="form-control" id="degree" name="degree" onchange="sublist();" required>
                                <option>SELECT DEGREE</option>
                                <option value="BTech">BTech</option>
                                <option value="MCA">MCA</option>
                                <option value="BCA">BCA</option> 
                            </select>
                        </div>
                        <div id="na"></div>
                        <div id="drp2" ></div>   
                        <div id="drp3" > </div> 

                        <div class="form-group">
                            <label for="phno">PHONE NO:</label>
                            <input type="text" name="phoneno" class="form-control" id="ph" required >
                        </div>

                        <div class="col-md-3">
                            <div class="radio">
                                <label><input type="radio" name="gender" required value="Male"><b>Male</b></label>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="radio">
                                <label><input type="radio" name="gender" required value="Female"><b>Female</b></label>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="ten">10 Percentage:</label>
                                    <input type="text" name="ten" class="form-control" id="drop" required >
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="twe">12 Percentage:</label>
                                    <input type="text" name="twe" class="form-control" id="drop" required >
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="sem1">1st SEM CGPA:</label>
                                    <input type="text" name="sem1" class="form-control" id="s1" required >
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="sem2">2nd SEM CGPA:</label>
                                    <input type="text" name="sem2" class="form-control" id="s2" required >
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="sem3">3rd SEM CGPA:</label>
                                    <input type="text" name="sem3" class="form-control" id="s3" required >
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="sem4">4th SEM CGPA:</label>
                                    <input type="text" name="sem4" class="form-control" id="s4" required >
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="sem5">5th SEM CGPA:</label>
                                    <input type="text" name="sem5" class="form-control" id="s5" required >
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="sem6">6th SEM CGPA:</label>
                                    <input type="text" name="sem6" class="form-control" id="s6" required >
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="sme7">7th SEM CGPA:</label>
                                    <input type="text" name="sem7" class="form-control" id="s7" required >
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="sem8">8th SEM CGPA:</label>
                                    <input type="text" name="sem8" class="form-control" id="s8" required >
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="cgpa">OVERALL CGPA:</label>
                            <input type="text" name="cgpa" class="form-control" id="c9" required >
                        </div>

                        <div class="form-group">
                            <label for="backlog">BACKLOG:</label>
                            <input type="text" name="backlog" class="form-control" id="drop" required >
                        </div>

                        <button  type="submit" class="btn btn-success" value="SignUp" style="width:40%;height:20%">SIGNUP</button>
                    </div>
                </form>
            </div>   



        </section>


    </body>

    <script>


        function sublist()
        {
            h1 = document.getElementById("degree").value;

            var a2;
            if (window.XMLHttpRequest) {
                a2 = new XMLHttpRequest();
            } else {
                a2 = new ActiveXObject("Microsoft.XMLHTTP");
            }

            a2.onreadystatechange = function () {
                if (a2.readyState == 4 && a2.status == 200)
                {

                    document.getElementById("drp2").innerHTML = a2.responseText;

                }
            }

            a2.open("GET", "degree_category_student.jsp?degree=" + h1, true);
            a2.send();
            subtext(h1);
        }


        function subtext(degree)
        {



            var a3;
            if (window.XMLHttpRequest) {
                a3 = new XMLHttpRequest();
            } else {
                a3 = new ActiveXObject("Microsoft.XMLHTTP");
            }

            a3.onreadystatechange = function () {
                if (a3.readyState == 4 && a3.status == 200)
                {

                    document.getElementById("drp3").innerHTML = a3.responseText;

                }
            }

            a3.open("GET", "branch_category_student.jsp?degree=" + degree, true);
            a3.send();



        }
    </script>
    <script>
        function checkpassword()
        {

            password = document.getElementById("t1").value;
            length = document.getElementById("t1").value.length;
            var flag_number = 0;
            var flag_lowercase = 0;
            var flag_upercase = 0;
            var a = document.getElementById("ph").value;
            var b = document.getElementById("s1").value;
            var c = document.getElementById("s2").value;
            var d = document.getElementById("s3").value;
            var e = document.getElementById("s4").value;
            var f = document.getElementById("s5").value;
            var g = document.getElementById("s6").value;
            var h = document.getElementById("s7").value;
            var i = document.getElementById("s8").value;
            var j = document.getElementById("c9").value;




            if (isNaN(a)) {
                alert("Eneter only numeric value in Phoneno");
                return false;
            } else if (a.length < 10) {
                alert("Phoneno must be 10 digit");
                return false;
            } else if (a.length > 10) {
                alert("Phoneno must be 10 digit");
                return false;
            } else if ((a.charAt(0) != 9) && (a.charAt(0) != 8) && (a.charAt(0) != 7) && (a.charAt(0) != 6)) {
                alert("Phone number must start with 9,8,7 and 6");
                return false;
            } else if (b > 10) {
                alert("sem one cgpa not greater than 10");
                return false;
            } else if (c > 10) {
                alert("sem2 cgpa not greater than 10");
                return false;
            } else if (d > 10) {
                alert("sem3 cgpa not greater than 10");
                return false;
            } else if (e > 10) {
                alert("sem4 cgpa not greater than 10");
                return false;
            } else if (f > 10) {
                alert("sem5 cgpa not greater than 10");
                return false;
            } else if (g > 10) {
                alert("sem6 cgpa not greater than 10");
                return false;
            } else if (h > 10) {
                alert("sem7 cgpa not greater than 10");
                return false;
            } else if (i > 10) {
                alert("sem8 cgpa not greater than 10");
                return false;
            } else if (j > 10) {
                alert("overall cgpa not greater than 10");
                return false;
            } else
            {
                var a = (document.getElementById("t1").value);
                var b = (document.getElementById("t2").value);
                if (a !== b) {
                    alert("pass not match");
                    return false;
                } else {
                    alert("pass  match");
                    return true;
                }

            }
        }



    </script>
<section>
            <%@include file = "footer-tpo.jsp"%> 
        </section>

</html>
