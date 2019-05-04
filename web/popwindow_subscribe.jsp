<%-- 
    Document   : popwindow_subscribe
    Created on : 29 Mar, 2019, 3:46:50 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <script>
            $(document).ready(function() {

    var delay = 300; // milliseconds
    var cookie_expire = 0; // days

    var cookie = localStorage.getItem("list-builder");
    if(cookie == undefined || cookie == null) {
        cookie = 0;
    }

    if(((new Date()).getTime() - cookie) / (1000 * 60 * 60 * 24) > cookie_expire) {
        $("#list-builder").delay(delay).fadeIn("fast", () => {
            $("#popup-box").fadeIn("fast", () => {});
        });

        $("button[name=subscribe]").click(() => {
            $.ajax({
                type: "POST",
                url: $("#popup-form").attr("action"),
                data: $("#popup-form").serialize(),
                success: (data) => {
                    $("#popup-box-content").html("<p style='text-align: center'>Thank you for subscribing to The Polyglot Developer newsletter!</p>");
                }
            });
        });

        $("#popup-close").click(() => {
            $("#list-builder, #popup-box").hide();
            localStorage.setItem("list-builder", (new Date()).getTime());
        });
    }

});
            </script>
        
        
    <style>
        #list-builder {
    position: fixed;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: #333;
    filter: alpha(opacity=80);
	opacity: 0.8;
    display: none;
}

#popup-box {
    position: fixed;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background-color: #911e26;
    color: #FFFFFF;
    width: 90%;
    max-width: 600px;
    padding: 30px;
    border: 10px solid #FFFFFF;
    display: none;
}

#popup-close {
    position: absolute;
    top: -25px;
    right: -25px;
    cursor: pointer;
    width: 40px;
}

#popup-box h1 {
    margin: 0;
}

#popup-box form {
    margin-bottom: 0px;
}

#popup-box input {
    padding: 10px;
    border: 1px solid #333;
    width: 40%;
}

#popup-box button {
    padding: 10px;
    border: 1px solid #333;
}
    </style>
    </head>
    <body>
        <div>
            Welcome to my website!
        </div>
        <div id="list-builder"></div>
        <div id="popup-box">
            <img src="close.png" id="popup-close" />
            <div id="popup-box-content">
                <h1>Subscribe to The Polyglot Developer Newsletter</h1>
                <p>
                    Stay up to date on the latest in web, mobile, and game development, plus receive exclusive content by
                    subscribing to our newsletter.
                </p>
                <form id="popup-form" action="https://email_list_service_api.com">
                    <input type="hidden" name="list" value="key_list_etc" />
                    <input type="text" name="name" placeholder="Full Name" />
                    <input type="text" name="email" placeholder="Email Address" />
                    <button type="button" name="subscribe">Subscribe</button>
                </form>
            </div>
        </div>
        <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
        
    </body>
</html>
