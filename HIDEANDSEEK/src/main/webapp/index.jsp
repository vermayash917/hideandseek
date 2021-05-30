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

    <%-- Linking CSS    --%>
    <link rel="stylesheet" href="indexpg.css">

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

<script src="commonjavascript.js"></script>
</body>
</html>