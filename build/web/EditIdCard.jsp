<%-- 
    Document   : EditIdCard
    Created on : 1 Mar 2025, 12:55:06 pm
    Author     : adi18
--%>

<%@page import="com.project.bean.IdCardBean"%>
<%@page import="com.project.dao.IdCardDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="add_Id_Card.css">
    </head>
     
      
    
    
    <body>
    <!-- Mobile Menu Button -->
    <button class="mobile-menu-button">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="4" y1="12" x2="20" y2="12"></line><line x1="4" y1="6" x2="20" y2="6"></line><line x1="4" y1="18" x2="20" y2="18"></line></svg>
    </button>

    <!-- Sidebar -->
    <aside class="sidebar">
        <div class="logo">
            <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon-blue"><path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M22 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
            <h1>TechCorp ID</h1>
        </div>
        
        <nav class="nav-menu">
           <form action="viewIdCardsController.jsp">
            <button class="nav-button" type="submit">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M22 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                <span>View ID Cards</span>
            </button>
            </form>
           
             <form action="add_Id_Card.jsp" type="submit">
            <button class="nav-button">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.375 2.625a2.121 2.121 0 1 1 3 3L12 15l-4 1 1-4Z"></path></svg>
                <span>Create ID Card</span>
            </button>
             </form>
            
            <form action="viewIdCardsController.jsp" type="submit">
            <button class="nav-button active">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M17 3a2.85 2.83 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5Z"></path></svg>
                <span>Update ID Cards</span>
            </button>
            </form>
            
            <form action="viewController.jsp" type="submit">
            <button class="nav-button">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 6h18"></path><path d="M19 6v14c0 1-1 2-2 2H7c-1 0-2-1-2-2V6"></path><path d="M8 6V4c0-1 1-2 2-2h4c1 0 2 1 2 2v2"></path></svg>
                <span>Delete ID Cards</span>
            </button>
            </form>
            
             <form action="viewController.jsp" type="submit">
            <button class="nav-button">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
                <span>Search by Emp ID</span>
            </button>
            </form>
            
             <form action="viewController.jsp" type="submit">
            <button class="nav-button">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path></svg>
                <span>Search by Department</span>
            </button>
            </form>
            
             <form action="viewController.jsp" type="submit">
            <button class="nav-button">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
                <span>Search by Name</span>
            </button>
            </form>
            
             <form action="viewController.jsp" type="submit">
            <button class="nav-button">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 6h18"></path><path d="M8 12h8"></path><path d="M3 18h18"></path></svg>
                <span>Sort by Department</span>
            </button>
            </form>
            
             <form action="viewController.jsp" type="submit">
            <button class="nav-button">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2l3 4h-2v7h-2V6H9l3-4z"></path><path d="M2 19h20"></path><path d="M10 22l-4-3"></path><path d="M14 22l4-3"></path></svg>
                <span>Sort by Location</span>
            </button>
            </form>
            
             <form action="viewController.jsp" type="submit">
            <button class="nav-button">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 1v22"></path><path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"></path></svg>
                <span>Sort by Salary</span>
            </button>
            </form>
            
             <form action="viewController.jsp" type="submit">
            <button class="nav-button">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg>
                <span>Logout</span>
            </button>
            </form>
        </nav>
    </aside>

    <!-- Main Content -->
    <main class="main-content">
        <!-- Header -->
        <header class="header">
            <div class="header-title">
                <h2>Employee ID Cards</h2>
                <p>Manage company ID cards</p>
            </div>
            
            <div class="header-actions">
                <button class="icon-button">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M6 8a6 6 0 0 1 12 0c0 7 3 9 3 9H3s3-2 3-9"></path><path d="M10.3 21a1.94 1.94 0 0 0 3.4 0"></path></svg>
                </button>
              
                <div class="avatar">
                    <img src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=32" alt="Admin">
                </div>
            </div>
        </header>

        
            <%
    IdCardDAO idd = new IdCardDAO();
    int empid = Integer.parseInt(request.getParameter("empid"));
    IdCardBean idb = idd.findById(empid);
    %> 
    
        <!-- Employee Cards Grid -->
        <div class="card-grid">
            <div class="form-container">
                <form id="idCardForm" action="updateIdCard.jsp">
                  <div class="form-grid">
      
                      <div class="form-group">
                          <label for="empid">Employee ID</label>
                          <input name="empid" type="text" id="fullName" value=<%= idb.getEmpId()%> required>
                        </div>  
      
                    <div class="form-group">
                      <label for="fullName">Full Name</label>
                      <input type="text" name="name" id="fullName" value=<%= idb.getName()%> required>
                    </div>
                    
                    <div class="form-group">
                      <label for="role">Designation</label>
                      <input type="text" name="designation" id="role" value=<%= idb.getDesignation()%> required>
                    </div>
                    
                    <div class="form-group">
                      <label for="department">Department</label>
                      <input type="text" name="department" id="department" value=<%= idb.getDeaprtment()%> required>
                    </div>
      
                    <div class="form-group">
                      <label for="salary">Salary</label>
                      <input type="text" name="salary" id="salary" value=<%= idb.getSalary()%> required>
                    </div>
                    
                    <div class="form-group">
                      <label for="Contact">Contact</label>
                      <input type="tel" name="contact" id="Contact" value=<%= idb.getContact()%> required>
                    </div>
      
                    <div class="form-group">
                      <label for="dob">DOB</label>
                      <input type="date" name="dob" id="dob" value=<%= idb.getDob()%> required>
                    </div>
      
                    <div class="form-group">
                      <label for="bloodGroup">Blood Group</label>
                      <select name="bloodgroup" id="bloodGroup" value=<%= idb.getBloodGroup()%> required>
                      
                        <option value="A+">A+</option>
                        <option value="A-">A-</option>
                        <option value="B+">B+</option>
                        <option value="B-">B-</option>
                        <option value="AB+">AB+</option>
                        <option value="AB-">AB-</option>
                        <option value="O+">O+</option>
                        <option value="O-">O-</option>
                      </select>
                    </div>
                  </div>
        
                  <div class="form-group">
                      <label for="location" >Location</label>
                      <input type="text" id="location" name="location" value=<%= idb.getLocation()%> required>
                    </div>
                 
        
                  <div class="form-group">
                    <label for="photo">Photo URL</label>
                    <div class="photo-input">
                      <input type="text" name="photourl" id="photo" value=<%= idb.getPhotoUrl()%> placeholder="https://images.unsplash.com/photo-1633332755192-727a05c4013d?w=150&h=150&fit=cro">
                      
                    </div>
                  </div>
        
      
      
                  <input type="submit" class="submit-btn" value="Update ID Card">
                </form>
              </div>
        </div>
    </main>

    <script>
        // Toggle mobile menu
        document.querySelector('.mobile-menu-button').addEventListener('click', function() {
            document.querySelector('.sidebar').classList.toggle('show');
        });
    </script>
</body>
</html>
