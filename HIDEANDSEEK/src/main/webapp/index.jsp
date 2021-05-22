<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>HIDE AND SEEK</title>

    <%--    For Nav bar--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    <%--   For Heading style--%>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Monoton&display=swap" rel="stylesheet">

    <%--    for second topic--%>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Ruda&display=swap" rel="stylesheet">

    <%--    For Advantages--%>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Elsie&display=swap" rel="stylesheet">

    <style>
        /*Default Reset to  page*/
        *{
            border: 0;
            padding: 0;
            margin: 0;
        }

        /*For top heading*/
        #toph{
            position: -webkit-sticky;
            position: sticky;
            top: 0;
        }
        #d_head {
            cursor: pointer;
            text-align: center;
            padding: 1%;
        }
        #head{
            font-family: 'Monoton', cursive;
            font-size: 700%;
            color: SEAGREEN;
        }

        /*For background*/
        .forbackgrd{
            background-image: url("img1.jpg");
            background-repeat: repeat;
            background-position: center;
        }

        /*For main message*/
        #d_topic{
            text-align: center;
            background: gainsboro;
            margin-left: 8%;
            margin-right: 9%;
        }
        #topic{
            font-family: 'Ruda', sans-serif;
            font-size: 180%;
            color: DARKBLUE;
        }

        /*For mid containers*/
        #top_container{
            width: 100%;
            height: 223px;
        }
        #container_1{
            float: left;
            margin-left: 20%;
            width: 22%;
            padding: 1%;
            border: 2px solid black;
            box-shadow: 5px 5px red;
            text-align: center;
            background-color: gainsboro;
        }
        #container_2{
            float: right;
            margin-right: 20%;
            width: 22%;
            padding: 1%;
            border: 2px solid black;
            box-shadow: 5px 5px red;
            text-align: center;
            background-color: gainsboro;
        }
        .subhead{
            padding-bottom: 1%;
            text-align: center;
            color: DARKBLUE;
        }
        .para{
            padding-bottom: 1%;
            text-align: center;
        }

        /*Mid box buttons*/
        .box_button{
            text-align: center;
            border: 1px solid black;
            padding: 3%;
            background: blue;
            color: white;
            border-radius: 20px;
        }
        .box_button:hover{
            background: blueviolet;
            cursor: pointer;
        }

        /*For below comtainer (advantages)*/
        #box_below_container{
            position: relative;
            margin-top: 0.5%;
            height: 11%;
            padding: 1px;
        }
        #below_container{
            text-align: center;
            color: black;
        }
        /*For subheading*/
        .sub{
            font-family: 'Elsie', cursive;
            font-size: 200%;
            padding: 0;
            margin: 0;
        }
        .list{
            list-style-type: disc;
            font-size: 20px;
        }
        .in_list{
            display: inline-block;
            padding: 0.2% 0.4%;
        }

        /*For Horizontal line*/
        .hr1{
            margin: 1% 22% 0.5% 22%; /*top right bottom left*/
            border-style: double;
            border-width: 4px;
            background: white;
            border-color: black;
        }
        .hr2{
            margin: 0;
            padding: 0;
            border-style: double;
            border-width: 1px;
            background: white;
            border-color: black;
        }

        /*For footer*/
        #d_name{
            position: fixed;
            display: inline-block;
            padding-top: 1%;
            padding-left: 2%;
            padding-bottom: 1%;
            width: 100%;
            bottom: 0;
            background: darkolivegreen;
        }
        #name{
            float: right;
            padding-right: 10px;
            font-family: 'Lato', sans-serif;
            color: white;
        }
        #foot_name{
            float: right;
            padding-right: 10px;
            font-family: 'Lato', sans-serif;
            color: #999999;
        }
        #foot_rights{
            float: left;
            font-family: 'Lato', sans-serif;
            color: #999999;
        }
        #rights{
            float: left;
            font-family: 'Lato', sans-serif;
            color: white;
        }

    </style>
</head>
<body>

<div class="forbackgrd" >

    <%--For top heading--%>
    <div id="toph">
        <div id="d_head">
            <h1 id="head" onclick="onclick_home()">HIDE & SEEK</h1>
        </div>
    </div>

    <%--For main message--%>
    <div id="d_topic">
        <p id="topic">
            <strong>
                Hide Your Secret Message in an image & ask Your Partner to seek it
                using our tool.
            </strong>
        </p>
    </div>

    <%--For Engrave and degrave box--%>
    <div id="top_container">
        <div id="container_1">
            <h4 class="subhead"><strong>ENGRAVE </strong></h4>
            <p class="para">
                Give a Non Transparent .png image & a message and Get a .png image with the message
                engraved in it
            </p>
            <input type="button" onclick="onclick_engrave()" value="Click here for Engraving" class="box_button">
        </div>

        <div id="container_2">
            <h4 class="subhead"><strong>DEGRAVE </strong></h4>
            <p class="para">
                Incase you want to retrive the text message give the stegenographed
                image here & read the Text
            </p>
            <input type="button" value="Click here for Degraving" class="box_button" onclick="onclick_degrave()">
        </div>
    </div>

    <%-- For Advantage box--%>
    <div id="box_below_container">
        <hr class="hr1">
        <div id="below_container">
            <h4 class="sub">ADVANTAGES</h4>
            <ul class="list" >
                <li class="in_list">100% secure&nbsp;&nbsp;|</li>
                <li class="in_list">&nbsp;No database to store your image or secret message&nbsp;&nbsp;|</li>
                <li class="in_list">&nbsp;User Friendly</li>
            </ul>
        </div>
        <hr class="hr1">
        <hr class="hr2">
    </div>
</div>

<%--For footer--%>
<div>
    <div id="d_name">
        <footer id="rights">© HIDE AND SEEK </footer>
        <footer id="foot_rights">&nbsp;&nbsp;,All Rights Reserved</footer>
        <footer id="name">Yash Verma & Varda Desai</footer>
        <footer id="foot_name">Designed & Made by</footer>
    </div>
</div>

<script>
    // function to go to homepage
    function onclick_home(){
        window.location.href="index.jsp";
    }

    // function to go to Engrave Page
    function onclick_engrave(){
        window.location.href="engrave.jsp";
    }

    // function to go to Degrave Page
    function onclick_degrave(){
        window.location.href="degrave.jsp";
    }
</script>
</body>
</html>