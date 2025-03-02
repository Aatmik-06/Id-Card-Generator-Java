<%-- 
    Document   : signupcontroller
    Created on : 24 Feb 2025, 12:33:38 am
    Author     : adi18
--%>

<%@page import="com.project.bean.UserBean"%>
<%@page import="com.project.dao.UsersDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  int empId = Integer.parseInt(request.getParameter("empid"));
            String email = request.getParameter("email");
            String userName = request.getParameter("un");
            String password = request.getParameter("ps");

            //step3: Create an Object of UsersBean
            UserBean ub=new UserBean();
            //step4: set data into bean
           ub.setEmpId(empId);
           ub.setEmail(email);
           ub.setUserName(userName);
           ub.setPassword(password);
            //step5: Create an Object of UsersDAO
            UsersDAO ud=new UsersDAO();
            int r=ud.registerUser(ub);
            if(r>0){
                out.println("<h1><font color='green'>User Registration Success</font></h1>");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }else{
                   out.println("<h1><font color='red'>User Registration Fail</font></h1>");
            }%>
    </body>
</html>
