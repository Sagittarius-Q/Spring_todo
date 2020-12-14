<html>
<head>
    <style>
        input.name-form{
            font-size: 25px;
            padding-top:7px;
            padding-left: 40px;
            margin-left: 100px;
            border: 4px;
            width: 500px;
            height: 40px;
            border-radius: 15px;
        }
        input.description-form{
            font-size: 25px;
            padding: 10px 20px;
            margin-top: 20px;
            border: 1px;
            width: 700px;
            height: 100px;
            border-radius: 25px;
        }
        input.submit-form{
            margin-top: 15px;
            margin-left: 300px;
            border: 4px;
            width: 100px;
            height: 30px;
            border-radius: 25px;
        }

        body {
            height: 100%;
            margin: 0;
            background: linear-gradient(45deg, #49a09d, #5f2c82);
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
            width: 800px;
            height: 800px;
            border-collapse: collapse;
            overflow: hidden;
            margin-left: auto;
            margin-right: auto;
            box-shadow: 0 0 20px rgba(0, 255, 0, 0.3);
            border-radius: 25px;
        }
    </style>
    <title>Add todo</title>
</head>
<body>
<div class ="container">
    <table>

        <form class="name-form" method="post" action="/todo" >
            <input class="name-form" type="text" name="name" placeholder="Title of description" /><br>
            <input class="description-form" type="text" name="description" placeholder="Description" /><br>
            <input class="submit-form" type="submit" />
        </form>
    </table>
</div>
</body>
</html>