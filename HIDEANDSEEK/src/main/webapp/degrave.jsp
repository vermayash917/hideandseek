<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HIDE AND SEEK</title>

    <%--    For Nav bar --%>
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
    <link rel="stylesheet" href="degravepg.css">

</head>
<body>

<%--Top heading--%>
<div>
    <div id="toph">
        <div id="d_head">
            <h1 id="head" onclick="onclick_back()">HIDE & SEEK</h1>
        </div>
    </div>

    <%--Horizontal Line--%>
    <hr class="hr3">

    <%--Navigation Menu--%>
    <div>
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="engrave.jsp">Engrave</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="degrave.jsp">Degrave</a>
            </li>
        </ul>
    </div>

    <%--For Sub heading--%>
    <div>
        <h4 id="top_name">DEGRAVING</h4>
    </div>

    <%--    For Form Part--%>
    <div id="top_container">
        <form enctype="multipart/form-data" method="post" action="Degrave_Servlet" >
            <h5 class="sub_head">Select .png File</h5>
            <div id="top_file_input" class="hoverbox">
                <input id="file_input" type="file" name="file" accept=".png" required>
            </div>
            <input id="button_3" type="submit" value="Display">
        </form>

        <%--Java code for Getting value from servelet to set text--%>
        <%
            Object attributeValue = request.getAttribute("degrave_text");
            if(attributeValue == null) {
                attributeValue = "";
            }
        %>

        <%--For Second form--%>
        <form method="get">
            <h5 id="output_head" class="sub_head">Engraved text will be displayed here</h5>
            <input id="text_output" value="<%= attributeValue%>" name="degrave_text"   type="text" readonly disabled>
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