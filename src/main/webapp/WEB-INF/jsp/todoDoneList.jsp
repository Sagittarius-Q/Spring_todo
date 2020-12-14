<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
   <title>Done list</title>
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
            font-family: sans-serif;
            font-weight: 100;
        }

        .container {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        table {
            width: 1200px;
            border-collapse: collapse;
            overflow: hidden;
            margin-left: auto;
            margin-right: auto;
            box-shadow: 0 0 20px rgba(0, 255, 0, 0.3);
            border-radius: 25px;
        }

        th,
        td {
            padding: 25px;
            background-color: rgba(255,255,255,0.2);
            color: #fff;
        }

        th {
            text-align: left;
        }

        thead,
        th {
            background-color: #55608f;
        }

    </style>
</head>
<body>
<div class="container">
    <div style="height: 40px; padding-left: 100px;padding-bottom: 30px">
        <ul style="font-size: 30px;">
            <li><a style="color: white;" href="/todo">Home</a></li>
            <li style="padding-left: 100px;"><a style="color: green;" href="/todo/done">Done</a></li>
            <li style="padding-left: 100px;"><a style="color: white;" href="/about">About</a></li>
            <li style="padding-left: 100px;"><a style="color: white" href="/logout">Log out</a></li>
        </ul>
    </div>
    <table>
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>description</th>
            <th>date</th>
            <th>remove</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="item">
            <tr>
                <td><c:out value="${item.id}"/></td>
                <td><c:out value="${item.name}"/></td>
                <td><c:out value="${item.description}"/></td>
                <td><c:out value="${item.targetDate}"/></td>
                <td><form method="post" action="/todo/delete">
                    <input type="hidden" name="id" value=${item.id} />
                    <a class="aHover" onclick="this.parentNode.submit();"> <svg style="color: red" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-trash-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7z"/>
                    </svg></a>
                </form></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>

</html>