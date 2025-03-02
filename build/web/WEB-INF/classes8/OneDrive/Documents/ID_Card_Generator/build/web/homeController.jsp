<%-- 
    Document   : homeController
    Created on : 24 Feb 2025, 3:06:35 pm
    Author     : adi18
--%>

<%@page import="com.project.dao.IdCardDAO"%>
<%@page import="com.project.bean.IdCardBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            int empId = Integer.parseInt(request.getParameter("empid"));
            String name = request.getParameter("name");
            String designation = request.getParameter("designation");
            String deaprtment = request.getParameter("department");
            String location = request.getParameter("location");
            double salary = Integer.parseInt(request.getParameter("salary"));
            String dob = request.getParameter("dob");
            String bloodGroup = request.getParameter("bloodgroup");
            String contact = request.getParameter("contact");
            String photoUrl = request.getParameter("photourl");

            IdCardBean idb = new IdCardBean();
            idb.setEmpId(empId);
            idb.setName(name);
            idb.setDesignation(designation);
            idb.setDeaprtment(deaprtment);
            idb.setLocation(location);
            idb.setSalary(salary);
            idb.setDob(dob);
            idb.setBloodGroup(bloodGroup);
            idb.setContact(contact);
            idb.setPhotoUrl(photoUrl);
          
            IdCardDAO ido = new IdCardDAO();
            
            int r = ido.addIdCard(idb);
            if(r>0){
             out.println("<h1><font color='green'>ID card Created</font></h1>");
                RequestDispatcher rd = request.getRequestDispatcher("idcard.jsp");
                rd.forward(request, response);
            }else{
                   out.println("<h1><font color='red'>ID card Not created</font></h1>");
            }

        %>
    </body>
</html>
