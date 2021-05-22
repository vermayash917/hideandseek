<%@ page import="java.util.regex.Pattern" %>
<%@ page import="java.util.regex.Matcher" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HIDE AND SEEK</title>

    <%--    For nav bar--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    <%--   For Heading style--%>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Monoton&display=swap" rel="stylesheet">

    <%--    For Names Style--%>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap" rel="stylesheet">

    <%--    TOP heading name--%>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Architects+Daughter&display=swap" rel="stylesheet">

    <style>
        html {
            scroll-behavior: smooth;
        }

        /*For resetting page*/
        *{
            border: 0;
            padding: 0;
            margin: 0;
        }

        /*Setting Background*/
        body{
            background-image: url("img2.jpg");
            background-repeat: repeat;
        }

        /*For Top Heading*/
        #toph{
            position: -webkit-sticky;
            position: sticky;
            top: 0;
        }
        #d_head {
            text-align: center;
            padding: 15px;
            color: black;
        }
        #head{
            cursor: pointer;
            font-family: 'Monoton', cursive;
            font-size: 60px;
        }

        /* For Horizontal line*/
        .hr4{
            margin: 0;
            padding: 0;
            border-style: double;
            border-width: 2px;
            background: white;
            border-color: black;
        }

        /*For Nav bar*/
        .nav{
            background: #b0adad;
        }
        a {
            color: #f8f9fa;
        }
        a:hover{
            color: black;
        }
        nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
            color: #495057;
            background-image: url("img5.jpg");
            border-color: #dee2e6 #dee2e6 #fff;
        }

        /*For sub head*/
        #top_name{
            text-align: center;
            font-weight: bold;
            letter-spacing: 4px;
            font-family: 'Architects Daughter', cursive;
            font-size: 50px;
            margin-bottom: 8px;
            margin-left: 36%;
            margin-right: 36%;
            border-radius: 50px;
            background: transparent;
        }

        /*For container*/
        #top_container{
            height: 375px;
            margin-top: 12px;
            margin-left: 30px;
            margin-right: 30px;
            padding: 10px;
            border: 3px solid black;
            background: #f5f2ee;
        }

        /*For Container heading*/
        .sub_head{
            text-align: left;
            padding-left: 40px;
            font-size: 17px;
            font-weight: bold;
        }

        /*FOR file input*/
        #top_file_input{
            text-align: left;
            border: 2px solid black;
            margin: 10px 20px 10px 38px; /*top  right bottom left*/
            padding-top: 2px;
            padding-left: 2px;
            width: 94%;
            height: 38px;
        }
        #file_input{
            font-weight: bold;
            color: darkslategray;
            background: transparent;
        }

        /*For input text*/
        .text_input{
            margin: 5px 20px 20px 38px;  /*top  right bottom left*/
            text-align: left;
            border: 2px solid black;
            width: 94%;
            height: 35px;
            background: transparent;
            color: black;
            font-weight: bold;
        }
        .list_input{
            margin: 5px 20px 20px 0px;  /*top  right bottom left*/
            text-align: left;
            border: 2px solid black;
            width: 94%;
            height: 35px;
            background: transparent;
        }
        .text_input:hover{
            box-shadow: 2px 2px 2px 2px black;
        }

        /*For checkbox*/
        #checkbox1{
            margin-left: 35px;
        }

        /*For hover css*/
        .hoverbox{
            font-weight: bold;
        }
        .hoverbox:hover{
            box-shadow: 2px 2px 2px 2px black;
        }


        /*For name and email*/
        .list1{
            list-style-type: none;
            margin-left:5px;
        }
        .list1 li {
            display: inline-block;
            font-size: 17px;
            padding-top: 5px;
            padding-left: 15px;
            font-weight: bold;
        }
        .hid_labels{
            visibility: hidden;
        }
        #name1{
            visibility: hidden;
            color: black;
        }
        #email1{
            margin-top: 8px;
            visibility: hidden;
        }

        /*For Buttons*/
        #button_1{
            float: left;
            height: 15%;
            width: 25%;
            margin-bottom: 5px;
            margin-left: 70px;
            text-align: center;
            color: black;
            background: darksalmon;
            padding: 8px;
            border-radius: 5px;
            font-weight: bold;
        }#button_1:hover{
             background: salmon;
             box-shadow: 2px 2px red;
         }
        #button_2{
            float: right;
            height: 15%;
            width: 25%;
            margin-bottom: 5px;
            margin-right: 90px;
            text-align: center;
            color: black;
            background: darksalmon;
            padding: 9px;
            visibility: hidden;
            border-radius: 5px;
            font-weight: bold;
        }
        #button_2:hover{
            background: salmon;
            box-shadow: 2px 2px red;
        }

        /*For footer*/
        #d_name{
            position: fixed;
            display: inline-block;
            padding-top: 8px;
            padding-left: 5%;
            padding-bottom: 4px;
            width: 100%;
            bottom: 0;
            background: darkgray;
        }
        #rights{
             float: left;
             font-family: 'Lato', sans-serif;
             color: white;
         }
        #foot_rights{
            float: left;
            font-family: 'Lato', sans-serif;
            color: black;
        }
        #name{
            float: right;
            padding-right: 10px;
            font-family: 'Lato', sans-serif;
            background: transparent;
            color: white;
        }
        #foot_name{
            float: right;
            padding-right: 10px;
            font-family: 'Lato', sans-serif;
            color: black;
        }

    </style>
</head>
<body>

<%--TOp Heading--%>
<div id="toph">
    <div id="d_head">
        <h1 id="head" onclick="onclick_back()">HIDE & SEEK</h1>
    </div>
</div>

<%--Horizontal line--%>
<hr class="hr4">

<%--NAv bar--%>
<div>
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="engrave.jsp">Engrave</a>
        </li>
        <li class="nav-item">
            <a class="nav-link " aria-current="page" href="degrave.jsp">Degrave</a>
        </li>
    </ul>
</div>


<div>
    <%--Sub heading--%>
    <div>
        <h4 id="top_name">ENGRAVING</h4>
    </div>

    <%--  For container--%>
    <div id="top_container">
        <%-- Creating form--%>
        <form name="Engrave_form" enctype="multipart/form-data" method="post" action="Download_Servlet" onsubmit="return validateForm()">

            <%--For input file--%>
            <label for="top_file_input" class="sub_head">Insert a .png Image</label>
            <div id="top_file_input" class="hoverbox">
                <input  id="file_input" name="file" type="file" accept=".png" required >
            </div>

            <%--For text input--%>
            <label for="text1" class="sub_head">Write Text to Engrave in the Image (at max 512 characters)</label>
            <input  id="text1"  class="text_input " type="text" name="engrave_text" placeholder="Enter text" required>

            <%--For Checkbox--%>
            <input id="checkbox1" class="hoverbox" type="checkbox" onchange="for_checkbox()">
             <label for="checkbox1" class="hoverbox">&nbsp; WANT TO SHARE ENGRAVED IMAGE VIA E-MAIL &nbsp;</label>


            <%--For name and email input--%>
            <ul class="list1">
                <li><label id="label1" class="hid_labels" for="name1">Enter Sender's Name</label>
                    <input id="name1" name="name"type="text" class="list_input hoverbox" placeholder="Name" >
                </li>
                <li>
                    <label id="label2" class="hid_labels" for="email1">Enter Receiver's Email Address</label>
                    <input id="email1"  class="list_input hoverbox" type="email" name="user_email" placeholder="Email id">
                </li>
            </ul>

            <%--For Buttons--%>
            <input id="button_1" name="button_name" type="submit" value="Download" >
            <input id="button_2" name="button_name" type="submit" value="Share" >

        </form>

    </div>
</div>

<%--For footer--%>
<div id="d_name">
    <footer id="rights">© HIDE AND SEEK </footer>
    <footer id="foot_rights">&nbsp;&nbsp;,All Rights Reserved</footer>
    <footer id="name">Yash Verma & Varda Desai</footer>
    <footer id="foot_name">Designed & Made by</footer>
</div>

<script>

    // Function to go to home page
    function onclick_back(){
        window.location.href="index.jsp";
    }

    // Function make visible and invisible buttons and text fields
    function for_checkbox() {
        const checked = document.getElementById("checkbox1").checked;
        if (checked === true) {
            document.getElementById("button_1").style.visibility = "hidden";
            document.getElementById("email1").style.visibility = "visible";
            document.getElementById("button_2").style.visibility = "visible";
            document.getElementById("name1").style.visibility = "visible";
            document.getElementById("label1").style.visibility = "visible";
            document.getElementById("label2").style.visibility = "visible";
        } else {
            document.getElementById("button_1").style.visibility = "visible";
            document.getElementById("email1").style.visibility = "hidden";
            document.getElementById("button_2").style.visibility = "hidden";
            document.getElementById("name1").style.visibility = "hidden";
            document.getElementById("label1").style.visibility = "hidden";
            document.getElementById("label2").style.visibility = "hidden";
        }
    }

    // Function to Validate form using javascript
    function validateForm(){
        const checked = document.getElementById("checkbox1").checked;
        if(checked===true){
            const input_text = document.forms["Engrave_form"]["engrave_text"].value;
            const nam = document.forms["Engrave_form"]["name"].value;
            const email = document.forms["Engrave_form"]["user_email"].value;
            if (input_text === "") {
                alert("Input Text must be filled out");
                return false;
            }
            else if (nam === "") {
                alert("Name must be filled out");
                return false;
            }
            else if(nam.search(/^[a-zA-Z0-9ßÄÖÜäöü_.-]+$/) === -1)
            {
                alert("Name must be String only . Please enter again");
                return false;
            }
            else if (email === "") {
                alert("Email must be filled out");
                return false;
            }
        }
        else{
            const x = document.forms["Engrave_form"]["engrave_text"].value;
            if (x === " ") {
                alert("Engrave Text cannot be blank. Please enter again");
                return false;
            }
        }
    }
</script>
</body>
</html>
