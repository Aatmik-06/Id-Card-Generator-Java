<%-- 
    Document   : logincontroller
    Created on : 23 Feb 2025, 3:18:03 pm
    Author     : adi18
--%>

<%@page import="com.project.dao.UsersDAO"%>
<%@page import="com.project.bean.UserBean"%>
<%@page import="javax.servlet.RequestDispatcher"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ID Card Generator</title>
    </head>
    <body>
        <%
            String userName = request.getParameter("un");
            String password = request.getParameter("ps");

            UsersDAO ud = new UsersDAO();
            int r = ud.loginCheck(userName,password);
          if (r > 0) {
//                HttpSession session=request.getSession();
                session.setAttribute("un", userName);
                out.println("<h1><font color='blue'>Login Success</font></h1>");
                RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
                rd.forward(request, response);
            } else {
                out.println("<h1><font color='red'>Login Fail.....Please Try Again</font></h1>");
            }
        %>
    </body>
</html>
