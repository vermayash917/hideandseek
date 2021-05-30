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

    <%-- Linking CSS    --%>
    <link rel="stylesheet" href="engravepg.css">
    
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
            <label for="top_file_input" class="sub_head">Select a .png image</label>
            <div id="top_file_input" class="hoverbox">
                <input  id="file_input" name="file" type="file" accept=".png" required >
            </div>

            <%--For text input--%>
            <label for="text1" class="sub_head">Enter text to engrave in the image (at max 512 characters)</label>
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

<script src="commonjavascript.js"></script>
</body>
</html>
