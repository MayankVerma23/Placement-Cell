<html>
    <head>
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Arimo" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

        <title>Parallax</title>

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
        <div class="box1">
            <h1>Placement Cell</h1>
        </div>
        <div class="box2">
            <div class="content">
                <div class="h"> <h4  style="margin-top: 50px;">About Us</h4></div>

                <p>


                    What is Lorem Ipsum?
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

                    <br>
                    Where does it come from?
                    Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin lite<br><br>rature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written <br>in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
                </p>    
                <h4 style="margin-top: 50px;">Our Objectives</h4>
                <p >
                    <u><b>Objectives of this department are as follows:</b></u>
                    <br>
                    1. Interacting & developing rapport with all external/internal constituents of client at all levels
                    <br>
                    2. Assisting students to develop their academic and career interests.
                    <br>
                    3. Empower students with life long career decision making skills.
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
                </p>
                <h4 style="margin-top: 50px;" >Placement Data</h4>
                <table style="margin-top: 50px;">
                    <tr>
                        <th></th>
                        <th colspan="2" >All Branches(including Off-Campus)</th>
                        <th >Total</th>
                    </tr>
                    <tr style="font-weight:700;">
                        <td>Academic Year</td>
                        <td>Companies Visited</td>
                        <td>Total Offers</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>2013-2014</td>
                        <td>400</td>
                        <td>1200</td>
                        <td>1000</td>
                    </tr>
                    <tr>
                        <td>2014-2014</td>
                        <td>400</td>
                        <td>1200</td>
                        <td>1000</td>
                    </tr>
                    <tr>
                        <td>2015-2016</td>
                        <td>400</td>
                        <td>1200</td>
                        <td>1000</td>

                    </tr>
                    <tr>
                        <td>2016-2017</td>
                        <td>400</td>
                        <td>1200</td>
                        <td>1000</td>

                    </tr>
                    <tr>
                        <td>2017-2018</td>
                        <td>400</td>
                        <td>1200</td>
                        <td>1000</td>

                    </tr>
                    <tr>
                        <td>2018-2019*</td>
                        <td>400</td>
                        <td>1200</td>
                        <td>1000</td>

                    </tr>
                </table>
                <br>              
                <br> 
                <p style="opacity:1;"><b> * </b>= Data Bound to Change</p>
                <p style="margin-top:40px;">Admin: Placement Co-ordinator</p>

            </div>
        </div>
        <div class="box3" >
            <p class>Over 1000! offers<br>300+ companies<br>6.4 Lpa avg package<p>
        </div>

    </body>
</html>