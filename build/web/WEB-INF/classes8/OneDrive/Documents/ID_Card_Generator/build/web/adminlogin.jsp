<%-- 
    Document   : adminlogin
    Created on : 24 Feb 2025, 11:51:42 am
    Author     : adi18
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Id card Generator</title>
        <link rel="stylesheet" href="adminlogin.css">
    </head>
    <body>
    <div id="main">
      <form action="adminController.jsp" id="form-main">
        <h1>Admin Login</h1>
        <p id="p">Enter admin id and password to access admin account.</p>
        <br />

        <label for="aid">Admin ID</label>
        <input type="text" name="aid" placeholder="Enter your admin id" />
        
         <label for="un">User Name</label>
        <input type="text" name="un" placeholder="Enter your username" />

        <label for="password">Password</label>
        <input type="password" name="ps" placeholder="Enter your password" />

        <input type="submit" name="submit" value="Login" id="btn" />

      </form>
    </div>
  </body>
</html>
