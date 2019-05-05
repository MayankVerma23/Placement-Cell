<!DOCTYPE html>
<html lang="en" >

    <head>
        <meta charset="UTF-8">
        <title> FAQ</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Arimo" />

        <link rel="stylesheet" href="css/style.css">

        <style>
            /* Styles for page */
            .container {
                width: 70%;
                margin: 150px auto;
            }

            body {
                color: #4B4B4B;
                font-family: "Arimo";
            }
            body a {
                cursor: pointer;
                color: #4B4B4B;
                text-decoration: none;
            }
            body section {
                margin-bottom: 90px;
            }
            body section h1 {
                text-transform: uppercase;
                text-align: center;
                font-weight: normal;
                letter-spacing: 10px;
                font-size: 25px;
                line-height: 1.5;
            }
            body section p, body section a {
                text-align: center;
                letter-spacing: 3px;
            }

            span {
                letter-spacing: 0px;
            }

            p {
                font-weight: 200;
                line-height: 1.5;
                font-size: 14px;
            }

            /* Styles for Accordion */
            .toggle:last-child {
                border-bottom: 1px solid #dddddd;
            }
            .toggle .toggle-title {
                position: relative;
                display: block;
                border-top: 1px solid #dddddd;
                margin-bottom: 6px;
            }
            .toggle .toggle-title h3 {
                font-size: 20px;
                margin: 0px;
                line-height: 1;
                cursor: pointer;
                font-weight: 700;
            }
            .toggle .toggle-inner {
                padding: 7px 25px 10px 25px;
                display: none;
                margin: -7px 0 6px;

            }

            .toggle .toggle-inner p{
                font-size: 20px;

            }

            .toggle .toggle-inner div {
                max-width: 100%;
            }
            .toggle .toggle-title .title-name {
                display: block;
                padding: 25px 25px 14px;
            }
            .toggle .toggle-title a i {
                font-size: 22px;
                margin-right: 5px;
            }
            .toggle .toggle-title i {
                position: absolute;
                background: url("http://arielbeninca.com/Storage/plus_minus.png") 0px -24px no-repeat;
                width: 24px;
                height: 24px;
                transition: all 0.3s ease;
                margin: 20px;
                right: 0;
            }
            .toggle .toggle-title.active i {
                background: url("http://arielbeninca.com/Storage/plus_minus.png") 0px 0px no-repeat;
            }
            .title{
                font-size: 50px;
                font-weight: 700;
            }

        </style>
    </head>

    <body>

        <div class="container"> 

            <section>
                <h1 class="title"><i class="fas fa-question-circle"></i>FAQ </h1>

            </section>
            <div class="toggle">
                <div class="toggle-title ">
                    <h3>
                        <i></i>
                        <span class="title-name"> What is the selection procedure?</span>
                    </h3>
                </div>
                <div class="toggle-inner">
                    <p>Companies determine all the selection procedure and may conduct Group Discussions, 1 or more rounds of Interviews followed by a Human Resource Interview.</p>
                </div>
            </div><!-- END OF TOGGLE -->


            <div class="toggle">
                <div class="toggle-title ">
                    <h3>
                        <i></i>
                        <span class="title-name">How are tests conduced?</span>
                    </h3>
                </div>

                <div class="toggle-inner">
                    <p>Mostly you will have to appear in our institution for the online test.Some companies does allow online tests to be taken from home.</p>	
                </div>
            </div><!-- END OF TOGGLE -->

            <div class="toggle">
                <div class="toggle-title  ">
                    <h3>
                        <i></i>
                        <span class="title-name"> What should I carry during the time of examination?</span>
                    </h3>
                </div>

                <div class="toggle-inner">
                    <p>You must carry your institution Identity Card and your general Identity proof(Aadhar etc.)</p>
                </div>

            </div><!-- END OF TOGGLE -->



            <div class="toggle">
                <div class="toggle-title  ">
                    <h3>
                        <i></i>
                        <span class="title-name"> Whom should I contact if I have some problems?</span>
                    </h3>
                </div>

                <div class="toggle-inner">
                    <p>You can view the contacts of placement co-ordinatiors. You can also contact the TPO using our "Contact Us" form.</p>
                </div>

            </div><!-- END OF TOGGLE -->



            <div class="toggle">
                <div class="toggle-title ">
                    <h3>
                        <i></i>
                        <span class="title-name"> How long it takes to declare the result?</span>
                    </h3>
                </div>

                <div class="toggle-inner">
                    <p>It depends on company to company. Most of the companies declare the results on the same day or in 2-3 days.</p>	
                </div>

            </div><!-- END OF TOGGLE -->




            <div class="toggle">
                <div class="toggle-title ">
                    <h3>
                        <i></i>
                        <span class="title-name">Can I miss an online test?</span>
                    </h3>
                </div>

                <div class="toggle-inner">
                    <p>You can miss a test but we advise you to fill only those companies that you are interested in.</p>
                </div>

            </div><!-- END OF TOGGLE -->



            <!-- END OF TOGGLE -->


        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>



        <script  >if (jQuery(".toggle .toggle-title").hasClass('active')) {
                jQuery(".toggle .toggle-title.active").closest('.toggle').find('.toggle-inner').show();
            }
            jQuery(".toggle .toggle-title").click(function () {
                if (jQuery(this).hasClass('active')) {
                    jQuery(this).removeClass("active").closest('.toggle').find('.toggle-inner').slideUp(200);
                } else {
                    jQuery(this).addClass("active").closest('.toggle').find('.toggle-inner').slideDown(200);
                }
            });</script>




    </body>

</html>
