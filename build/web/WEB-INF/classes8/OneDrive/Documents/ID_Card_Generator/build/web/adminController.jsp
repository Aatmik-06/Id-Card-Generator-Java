<%-- 
    Document   : adminController
    Created on : 24 Feb 2025, 12:44:48 pm
    Author     : adi18
--%>

<%@page import="com.project.dao.AdminDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int adminid = Integer.parseInt(request.getParameter("aid"));
            String userName = request.getParameter("un");
            String password = request.getParameter("ps");

            AdminDAO ud = new AdminDAO();
            int r = ud.loginCheck(adminid,userName,password);
          if (r > 0) {
//                HttpSession session=request.getSession();
//                session.setAttribute("aid", adminid);
                out.println("<h1><font color='blue'>Login Success</font></h1>");
                RequestDispatcher rd = request.getRequestDispatcher("viewIdCardsController.jsp");
                rd.forward(request, response);
            } else {
                out.println("<h1><font color='red'>Login Fail.....Please Try Again</font></h1>");
            }
        %>
    </body>
</html>
