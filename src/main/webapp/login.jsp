<html>
<head><TITLE> Himalaya Airways</TITLE>
    <link rel="stylesheet" href="style.css">
    <ul>
        <li><a class="active" href="index.jsp">Home</a></li>
        <li><a href="login.jsp">Login</a></li>
        <li><a href="register.jsp">Register</a></li>
        <li><a href="#about">About</a></li>
    </ul>
    <h1 align="center"><img src="logo.png" width="200" height="224" alt="image logo"></h1>
    <h1 align="center" style="color: green">

        Welcome to the Himalaya<br> Airways Online System</h1>
</head>
<body bg bgcolor="#6495ed">

<h2 align="center">You can login to your account below to access online account services.</h2>
<form action="login" method="post">
    <div class="loginDiv">
        <h3 align="center"><input type="text" name="uId" autofocus="1" placeholder="Member ID or Phone Number"></h3>
        <h3 align="center"><input type="password" name="uPass" placeholder="Password"></h3>
        <h3 align="center"><input type="submit" value="Log In"></h3>
        <h3 align="center"><a href="register.jsp" >Forgot password?</a></h3>
        <h1 align="center" style="color: green"><a href="register.jsp" target="_blank">Create new Account</a></h1>
    </div>
</form>
</body>
</html>
