<html>


<head>
    <title>Sign up</title>
    <style>
        body{
            background:linear-gradient(45deg, #49a09d, #5f2c82);
        }
        .container{
            text-align: center;
        }
        .card{
            margin: 300px auto auto;
            text-align: center;
            width: 500px;
            height: 600px;
        }
        input{
            width: 200px;
            height: 3em;
            border-radius: 15px;
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>

<body class="container">
<div class="card">
    <h1>Sign up</h1>
    <div style="margin-bottom: 20px;"><svg xmlns="http://www.w3.org/2000/svg" width="7em" height="7em" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
        <path d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 0 0 8 15a6.987 6.987 0 0 0 5.468-2.63z"/>
        <path fill-rule="evenodd" d="M8 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
        <path fill-rule="evenodd" d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z"/>
    </svg></div>
<form method="post" action="/signup" >
    <input type="text" name="userName" placeholder="Username"/>
    <input type="password" name="password" placeholder="Password" />
    <input type="submit" value="Sign up"/>
</form>
    <a style="color: black;font-size: 1.5em;" href="/login">Log In</a>
    </div>

</body>

</html>