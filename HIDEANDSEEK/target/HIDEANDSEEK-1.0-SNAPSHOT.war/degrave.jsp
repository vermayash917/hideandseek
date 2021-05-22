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

    <style>
        *{
            border: 0;
            padding: 0;
            margin: 0;
        }
        body{
            background-image: url("img2.jpg");
            background-repeat: repeat;
        }

        /*For top heading*/
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

        /*For Horizontal bar*/
        .hr3{
            margin: 0;
            padding: 0;
            border-style: double;
            border-width: 2px;
            background: white;
            border-color: black;
        }

        /*For Navigation menu*/
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

        /*For Sub heading*/
        #top_name{
            text-align: center;
            margin: 10px;
            font-weight: bold;
            letter-spacing: 4px;
            font-family: 'Architects Daughter', cursive;
            font-size: 50px;
        }

        /*For the form part*/
        #top_container{
            height: 300px;
            margin: 30px;
            padding: 10px;
            border: 3px solid black;
            background: #f5f2ee;
        }
        #top_file_input{
            text-align: left;
            border: 2px solid red;
            margin-top: 15px;
            margin-left: 38px;
            margin-bottom: 20px;
            padding-top: 2px;
            padding-left: 2px;
            width: 94%;
            height: 40px;
        }
        #file_input{
            font-weight: bold;
            color: darkslategray;
            background: transparent;
        }
        .sub_head{
            text-align: left;
            padding-left: 40px;
        }
        #text_output{
            margin: 5px 20px 20px 38px;  /*top  right bottom left*/
            text-align: left;
            border: 2px solid red;
            width: 94%;
            height: 40px;
            background: lightgray;
            font-weight: bold;
        }
        #button_3{
            height: 20%;
            width: 30%;
            padding: 10px;
            text-align: center;
            color: white;
            background: darkgrey;
            margin-top: 15px;
            margin-bottom: 20px;
            margin-left: 38%;
            border-radius: 10px;
            font-weight: bold;
        }
        #button_3:hover{
            background: grey;
            box-shadow: 2px 2px red;
        }

        /*For box Hover*/
        .hoverbox:hover{
            box-shadow: 2px 2px 2px 2px black;
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
        #foot_rights{
            float: left;
            font-family: 'Lato', sans-serif;
            color: black;
        }
        #rights{
            float: left;
            font-family: 'Lato', sans-serif;
            color: white;
        }

    </style>
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
            <h5 class="sub_head">Insert .png File</h5>
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
            <h5 id="output_head" class="sub_head">Engraved Text will be displayed Here</h5>
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

<script>
    // For returning to homepage
    function onclick_back(){
        window.location.href="index.jsp";
    }
</script>
</body>
</html>