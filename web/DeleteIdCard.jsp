<%-- 
    Document   : DeleteIdCard
    Created on : 1 Mar 2025, 12:50:32 pm
    Author     : adi18
--%>

<%@page import="com.project.dao.IdCardDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            int empid = Integer.parseInt(request.getParameter("empid"));
            IdCardDAO sd = new IdCardDAO();
            int r = sd.deleteIdCard(empid);
            if(r>0){
            response.sendRedirect("viewIdCardsController.jsp");
            }
        %>
    </body>
</html>
