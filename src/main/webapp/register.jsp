<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="style.css">
    <ul>
        <li><a class="active" href="index.jsp">Home</a></li>
        <li><a href="login.jsp">Login</a></li>
        <li><a href="register.jsp">Register</a></li>
        <li><a href="#about">About</a></li>
    </ul>
    <meta charset="UTF-8">
    <title>Register User -Himalayan Airways</title>
    <script type="text/javascript">
    function validate() {
    	  const password = document.querySelector('input[name=pass1]');
    	  const confirm = document.querySelector('input[name=pass2]');
    	  if (confirm.value === password.value) {
    	    confirm.setCustomValidity('');
    	  } else {
    	    confirm.setCustomValidity('Passwords do not match');
    	  }
    	}
 	function sleepFor(){
 		await sleep(2000);
 		alert("Redirecting...");
 		window.location.href='login.jsp';
 	}
    </script>
</head>
<body bg bgcolor="#6495ed">
<form action="register" method="post">
  <h1 align="center" style="color: green"> Create new Account<br>Himalaya Airways</h1>

  <h3 align="center"> <input type="text" name="fName" autofocus="1" placeholder="First Name" required><input type="text" name="lName" placeholder="Last Name" required></h3>
  <h3 align="center"><input type="email" name="email" placeholder="Email" required><input type="text" name="phone" placeholder="Phone Number" required> </h3>
  <h3 align="center"> <input type="password" name="pass1" placeholder="Create Password" id="p1" onChange= "validate()" required>
  <input type="password" name="pass2" placeholder="Confirm Password"  id="p2" onChange="validate()"></h3>
    <p align="center">Create User Name <input type="text" name="userId" required></p>
    <p align="center">Date of Birth <input type="date" name="dob" required></p>
  <p align="center">Gender: Male<input type="radio" name="gender" value="male" required> Female<input type="radio" name="gender" value="female" required> </p>
  <h3 align="center"> <input type="submit"  style="color: green" value="SignUp" onClick=sleepFor></h3>
</form>
</body>
</html>