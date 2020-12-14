<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Todo list</title>
    <style type="text/css">
        .customDiv {
            text-align: center;
            padding: 20px;
        }

        html,
        body {
            height: 100%;
        }
        ul {
            color: #e0dcdc;
            margin: 0;
            padding: 0;
        }
        li {
            color:white;
            display: inline;
            margin-left:70px;
        }


        body {
            margin: 0;

            background:linear-gradient(45deg, #49a09d, #5f2c82);
            font-weight: 100;
        }

        .container {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .table {
            width: 1200px;
            border-collapse: collapse;
            overflow: hidden;
            margin-left: auto;
            margin-right: auto;
            box-shadow: 0 0 20px rgba(0, 255, 0, 0.3);
            border-radius: 25px;
            text-align: center;
        }

    </style>
</head>
<body>
<div class="container">
    <div style="height: 40px; padding-left: 100px;padding-bottom: 30px">
        <ul style="font-size: 30px;">
            <li><a style="color: white;" href="/todo">Home</a></li>
            <li style="padding-left: 100px;"><a style="color: white;" href="/todo/done">Done</a></li>
            <li style="padding-left: 100px;"><a style="color: green; border: darkgreen" href="/about">About</a></li>
            <li style="padding-left: 100px;"><a style="color: white" href="/logout">Log out</a></li>
        </ul>
    </div>
       <div class="table">
           <h1 style="color: black"> Welcome </h1>
           <p style="font-size: 25px; margin-right: 30px; margin-left: 30px; ">  This web app developed for managing your works , time. It provides adding new target, checking done list; You can add new "todo" list on your Todo table .If you will have finished works, you can take on the table and add to "done" lists or remove on your table list. Thank you for trying this app.</p>
       </div>

</div>
</body>

</html>