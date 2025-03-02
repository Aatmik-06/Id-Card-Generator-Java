<%-- 
    Document   : signup.jsp
    Created on : 19 Feb 2025, 4:48:26 pm
    Author     : adi18
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup</title>
         <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div  id="main" >
    
        <form action="signupController.jsp" id="form-main"> 
        <h1>Sign Up</h1>
        <p id="p">Enter your details to create a account.</p>
        <br>
    
        <label for="empid">Employee ID</label>
        <input type="text" name="empid" placeholder="Enter your employee Id "> 

        <label for="email">Email</label>
        <input type="email" name="email" placeholder="Enter your email">

        <label for="un">User Name</label>
        <input type="text" name="un" placeholder="Enter your username">
        
        <label for="password">Password</label>
        <input type="password" name="ps" placeholder="Enter your password">
        
        <input type="submit" name="submit" value="Sign Up " id="btn" >
        <br>
       <div style="display: flex; justify-content: center;">
        <p>Already have an account? </p>&nbsp;&nbsp;
        <a href="index.jsp" id="signup" >Login</a> 
       </div>
        </form>
        </div>
    </body>
</html>
