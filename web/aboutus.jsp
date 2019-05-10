<html>
    <head>
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Arimo" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    

        <style>
            body{
                margin: 0;
                padding: 0;
            }

            .box1{
                height: 40vh;
                width: 100%;
                background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url(background_images/image1.jpg);
                background-size: cover;
                background-position: center;
                display: table;
                background-attachment: fixed;
                color:white;
            }
            .box2{
                height: 100vh;
                width: 100%;

                background-size: cover;
                background-position: center;
                display: table;
                background-attachment: fixed;
            }
            .box3{
                height: 40vh;
                width: 100%;
                background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url(image1.jpg);
                background-size: cover;
                background-position: center;
                display: table;
                background-attachment: fixed;
                color: #fff;
                display: flex;
                align-items: center;
                padding-left: 70px;
            }
            @media(min-width:900px)
            {
                .box3{
                    padding-left: 30vw;
                }
            }
            .haa{
                font-family: sans-serif;
                font-size: 48px;
                color: #fff;
                margin: 0px;
                text-align: center;
            }

            body, html {
                height: 100%;
                margin: 0;
                font-family: Arimo;
            }

            .content{
                max-width: 1100px;
                display: flex;
                margin: 0 auto;
                padding: 0 50px 50px;
                flex-direction: column;

            }

            .content p{
                font-size: 18px;
                opacity: 0.9;
            }
            .content h4{
                color: black;
                font-size: 25px;
                font-weight: 700;
            }
            table, td, th {
                border: 1px solid white;
            }

            table {
                border-collapse: collapse;
                width: 100%;
            }

            th {
                margin-left: 10px;
                color:white;
                background-color: #CD5C5C;
                height: 50px;
            }

            .companies {

                background-image:linear-gradient(to bottom, rgba(245, 246, 252, 0.52), rgba(117, 19, 93, 0.73)),url('background_images/cse.png');
                width: 80%;
                height: 400px;
                background-size: cover;
            }
            table{
                font-size: 15px;
            }
            table th,td{

                padding:10px;
            }
            table td{
                padding: 10px;
            }
            table tr:hover{
                background-color: #E9967A;
            }
            .box1{
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .box1 h1{
                font-size: 60px;
            }
            .box3 p{
                font-size: 40px;
            }
        </style>
    </head>
    <body>
         <section>


             <%@include file = "index_navbar.jsp"%>
        </section>
        <div class="box1">
            <h1>ABOUT US</h1>
        </div>
        <div class="box2">
            <div class="content">
                
<h1>ABOUT US</h1>
                <div class="text-success">
                    <blockquote>    The Placement Cell plays a crucial role in locating job opportunities for Under Graduates and Post Graduates passing out from the college by keeping in touch with reputed firms and industrial establishments. The Placement Cell operates round the year to facilitate contacts between companies and graduates. The number of students placed through the campus interviews is continuously rising. On invitation, many reputed industries visit the institute to conduct interviews.<br><br>

                        We have been successful in maintaining our high placement statistics over the years and the fact that our students bear the recession blues with record breaking placements itself is a testimony to our quality. Our ingenious alumnae have set new standards in the corporate world through their estimable contributions and it is my firm conviction that we will continue that legacy in the years to come.<br><br>

                        The Placement Cell organizes career guidance programmes for all the students starting from first year. The cell arranges training programmes like Mock Interviews, Group Discussions, Communication Skills Workshop etc and it also organizes Public Sector Exam Training for students who are interested to join Government Sectors. It also invites HR Managers from different industries to conduct training programmes for final year students.<br>
                    <br>
                    The objective of the college Placement Cell is to help students identify their career goals and provide an edge into the present day competitive job market. We are keen to organize a Campus Placement Drive at our institute for the Final Year students.</blockquote>
                </div>
                
                <h4 style="margin-top: 50px;">Our Objectives</h4>
                <p> <u><b>Objectives of this department are as follows:</b></u></p>
                <p class="text-success">                 
                    
                    1. Developing the students to meet the Industries recruitment process
                    <br>
                    2. To motivate students to develop Technical knowledge and soft skills in terms of career planning, goal setting
                    <br>
                    3. To motivate students aspire for higher studies and guiding them to take competitive exams such as CAT, GATE, TOEFL, GRE, IES,UPSC,TNPSC etc
                    <br>
                    4. Providing resources and activities to facilitate the career planning process.
                    <br>    
                    5. Act as an interface among students, alumni, and the corporate.
                    <br>    
                    6. Creating awareness among the students regarding future career options.
                    <br>
                    7. Co-ordinating summer training/internship programme.
                    <br>
                    8. Bridging gap between Industry and Academia.
                    <br>
                    9. Aiming to Place the maximum number of students through campus & off-campus interviews conducted by the top companies
                    <br>
                </p>
            </div>
        </div>
        <section>
            <%@include file = "footer-tpo.jsp"%> 
        </section>
    </body>
</html>