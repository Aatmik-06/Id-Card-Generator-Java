<%-- 
    Document   : index.jsp
    Created on : 19 Feb 2025, 4:02:36 pm
    Author     : adi18
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ID Card Generator</title>
     <link rel="stylesheet" href="style.css">
    </head>
   <body>
     <div id="main">
      <form action="loginController" id="form-main">
        <h1>Login</h1>
        <p id="p">Enter your email and password to access account.</p>
        <br />

        <label for="un">User Name</label>
        <input type="text" name="un" placeholder="Enter your username" />

        <label for="password">Password</label>
        <input type="password" name="ps" placeholder="Enter your password" />

        <input type="submit" name="submit" value="Login" id="btn" />

        <p id="pi">Click Below To Login as Admin</p>

        <div id="signupdiv">
          <a href="adminlogin.jsp" id="adminlogin" style="padding-top: 7px"
            >Admin Login</a>
        </div>
        <br />
        <div style="display: flex; justify-content: center">
          <p>Don't have an account?</p>
          &nbsp;&nbsp;
          <a href="signup.jsp" id="signup">Sign Up</a>
        </div>
      </form>
    </div>
</body>
</html>
