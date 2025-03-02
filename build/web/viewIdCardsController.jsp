<%-- 
    Document   : viewIdCardsController
    Created on : 26 Feb 2025, 2:30:26 pm
    Author     : adi18
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.project.bean.IdCardBean"%>
<%@page import="com.project.dao.IdCardDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title> 
        <link rel="stylesheet" href="viewcontroller.css">
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
            <button class="nav-button active" type="submit">
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
            <button class="nav-button">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M17 3a2.85 2.83 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5Z"></path></svg>
                <span>Update ID Cards</span>
            </button>
            </form>
            
            <form action="viewIdCardsController.jsp" type="submit">
            <button class="nav-button">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 6h18"></path><path d="M19 6v14c0 1-1 2-2 2H7c-1 0-2-1-2-2V6"></path><path d="M8 6V4c0-1 1-2 2-2h4c1 0 2 1 2 2v2"></path></svg>
                <span>Delete ID Cards</span>
            </button>
            </form>
            
             <form action="searchById.jsp" type="submit">
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

            <!-- Search and Actions -->
            <div class="search-bar">
                <form action="searchByIdController.jsp">
                <div class="search-input">
                    <button type="submit" style="background-color: transparent">  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="8"></circle><path d="m21 21-4.3-4.3"></path></svg> </button>
                    <input type="text" name="empid" placeholder="Search ey employee id...">
                </div>
                    </form>

            </div>



            <!-- Employee Cards Grid -->
            <div class="container">
                <%
                    IdCardDAO ed = new IdCardDAO();
                    ArrayList<IdCardBean> list = ed.findAll();

                    for (IdCardBean idb : list) {

                %>

                <div class="card-preview">
                    <div class="id-card front">
                        <div class="card-header">
                            <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-building-2"><path d="M6 22V4c0-.27 0-.55.07-.82a1.98 1.98 0 0 1 1.1-1.11C7.46 2 7.73 2 8 2h8c.27 0 .55 0 .82.07a1.98 1.98 0 0 1 1.11 1.1C18 3.46 18 3.73 18 4v18"/><path d="M2 14v6c0 .27 0 .55.07.82a1.98 1.98 0 0 0 1.1 1.11c.28.07.56.07.83.07h16c.27 0 .55 0 .82-.07a1.98 1.98 0 0 0 1.11-1.1c.07-.28.07-.56.07-.83v-6"/><path d="M5 13v-3c0-.27 0-.55.07-.82a1.98 1.98 0 0 1 1.1-1.11C6.46 8 6.73 8 7 8h10c.27 0 .55 0 .82.07a1.98 1.98 0 0 1 1.11 1.1c.07.28.07.56.07.83v3"/><path d="M6 17h4"/><path d="M14 17h4"/><path d="M6 13h12"/><path d="M6 5h12"/><path d="M6 9h12"/></svg>
                            <div class="company-info">
                                <h3>TechCorp</h3>
                                <p>Employee ID Card</p>
                            </div>
                        </div>

                        <div class="card-body">
                            <div class="photo-container">
                                <img src="<%=idb.getPhotoUrl()%> " alt="Employee Photo" class="employee-photo">
                                <div class="camera-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="22" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-camera"><path d="M14.5 4h-5L7 7H4a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2h-3l-2.5-3z"/><circle cx="12" cy="13" r="3"/></svg>
                                </div>
                            </div>

                            <div class="employee-info">
                                <h2 class="employee-name"> <%=idb.getName()%> </h2>
                                <p class="employee-role"><%=idb.getDesignation()%></p>

                                <div class="info-item">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-shield"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10"/></svg>
                                    <span>Employee ID: <%=idb.getEmpId()%></span>
                                </div>

                                <div class="info-item">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-building-2"><path d="M6 22V4c0-.27 0-.55.07-.82a1.98 1.98 0 0 1 1.1-1.11C7.46 2 7.73 2 8 2h8c.27 0 .55 0 .82.07a1.98 1.98 0 0 1 1.11 1.1C18 3.46 18 3.73 18 4v18"/><path d="M2 14v6c0 .27 0 .55.07.82a1.98 1.98 0 0 0 1.1 1.11c.28.07.56.07.83.07h16c.27 0 .55 0 .82-.07a1.98 1.98 0 0 0 1.11-1.1c.07-.28.07-.56.07-.83v-6"/><path d="M5 13v-3c0-.27 0-.55.07-.82a1.98 1.98 0 0 1 1.1-1.11C6.46 8 6.73 8 7 8h10c.27 0 .55 0 .82.07a1.98 1.98 0 0 1 1.11 1.1c.07.28.07.56.07.83v3"/><path d="M6 17h4"/><path d="M14 17h4"/><path d="M6 13h12"/><path d="M6 5h12"/><path d="M6 9h12"/></svg>
                                    <span><%=idb.getDesignation()%></span>
                                </div>

                                <div>
                                    <div class="info-item">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 384 512"><path fill="#848b98" d="M48 0C21.5 0 0 21.5 0 48L0 464c0 26.5 21.5 48 48 48l96 0 0-80c0-26.5 21.5-48 48-48s48 21.5 48 48l0 80 96 0c26.5 0 48-21.5 48-48l0-416c0-26.5-21.5-48-48-48L48 0zM64 240c0-8.8 7.2-16 16-16l32 0c8.8 0 16 7.2 16 16l0 32c0 8.8-7.2 16-16 16l-32 0c-8.8 0-16-7.2-16-16l0-32zm112-16l32 0c8.8 0 16 7.2 16 16l0 32c0 8.8-7.2 16-16 16l-32 0c-8.8 0-16-7.2-16-16l0-32c0-8.8 7.2-16 16-16zm80 16c0-8.8 7.2-16 16-16l32 0c8.8 0 16 7.2 16 16l0 32c0 8.8-7.2 16-16 16l-32 0c-8.8 0-16-7.2-16-16l0-32zM80 96l32 0c8.8 0 16 7.2 16 16l0 32c0 8.8-7.2 16-16 16l-32 0c-8.8 0-16-7.2-16-16l0-32c0-8.8 7.2-16 16-16zm80 16c0-8.8 7.2-16 16-16l32 0c8.8 0 16 7.2 16 16l0 32c0 8.8-7.2 16-16 16l-32 0c-8.8 0-16-7.2-16-16l0-32zM272 96l32 0c8.8 0 16 7.2 16 16l0 32c0 8.8-7.2 16-16 16l-32 0c-8.8 0-16-7.2-16-16l0-32c0-8.8 7.2-16 16-16z"/></svg>
                                        <span><%=idb.getDeaprtment()%></span>
                                    </div>
                                </div>

                                <div class="info-item">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-map-pin"><path d="M20 10c0 6-8 12-8 12s-8-6-8-12a8 8 0 0 1 16 0Z"/><circle cx="12" cy="10" r="3"/></svg>
                                    <span><%=idb.getLocation()%></span>
                                </div>

                                <div>
                                    <div class="info-item">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 448 512"><path fill="#848b98" d="M128 0c17.7 0 32 14.3 32 32l0 32 128 0 0-32c0-17.7 14.3-32 32-32s32 14.3 32 32l0 32 48 0c26.5 0 48 21.5 48 48l0 48L0 160l0-48C0 85.5 21.5 64 48 64l48 0 0-32c0-17.7 14.3-32 32-32zM0 192l448 0 0 272c0 26.5-21.5 48-48 48L48 512c-26.5 0-48-21.5-48-48L0 192zm64 80l0 32c0 8.8 7.2 16 16 16l32 0c8.8 0 16-7.2 16-16l0-32c0-8.8-7.2-16-16-16l-32 0c-8.8 0-16 7.2-16 16zm128 0l0 32c0 8.8 7.2 16 16 16l32 0c8.8 0 16-7.2 16-16l0-32c0-8.8-7.2-16-16-16l-32 0c-8.8 0-16 7.2-16 16zm144-16c-8.8 0-16 7.2-16 16l0 32c0 8.8 7.2 16 16 16l32 0c8.8 0 16-7.2 16-16l0-32c0-8.8-7.2-16-16-16l-32 0zM64 400l0 32c0 8.8 7.2 16 16 16l32 0c8.8 0 16-7.2 16-16l0-32c0-8.8-7.2-16-16-16l-32 0c-8.8 0-16 7.2-16 16zm144-16c-8.8 0-16 7.2-16 16l0 32c0 8.8 7.2 16 16 16l32 0c8.8 0 16-7.2 16-16l0-32c0-8.8-7.2-16-16-16l-32 0zm112 16l0 32c0 8.8 7.2 16 16 16l32 0c8.8 0 16-7.2 16-16l0-32c0-8.8-7.2-16-16-16l-32 0c-8.8 0-16 7.2-16 16z"/></svg>
                                        <span><%=idb.getDob()%></span>
                                    </div>
                                </div>
                            </div>
                        </div>




                        <div class="card-footer">
                            <div class="validity">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-calendar"><rect width="18" height="18" x="3" y="4" rx="2" ry="2"/><line x1="16" x2="16" y1="2" y2="6"/><line x1="8" x2="8" y1="2" y2="6"/><line x1="3" x2="21" y1="10" y2="10"/></svg>
                                <div>
                                    <span>Valid Until</span>
                                    <strong>Dec 31, 2025</strong>
                                </div>
                            </div>
                            <div class="card-codes">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-barcode"><path d="M3 5v14"/><path d="M8 5v14"/><path d="M12 5v14"/><path d="M17 5v14"/><path d="M21 5v14"/></svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-qr-code"><rect width="5" height="5" x="3" y="3" rx="1"/><rect width="5" height="5" x="16" y="3" rx="1"/><rect width="5" height="5" x="3" y="16" rx="1"/><path d="M21 16h-3a2 2 0 0 0-2 2v3"/><path d="M21 21v.01"/><path d="M12 7v3a2 2 0 0 1-2 2H7"/><path d="M3 12h.01"/><path d="M12 3h.01"/><path d="M12 16v.01"/><path d="M16 12h1"/><path d="M21 12v.01"/><path d="M12 21v-1"/></svg>
                            </div>
                        </div>
                    </div>

                    <div class="id-card back hidden">
                        <div class="emergency-info">
                            <h3>Emergency Information</h3>
                            <div class="info-group">
                                <label>Blood Group</label>
                                <p><%=idb.getBloodGroup()%></p>
                            </div>
                            <div class="info-group">
                                <label>Contact</label>
                                <p>+91<%=idb.getContact()%></p>
                            </div>
                        </div>

                        <div class="guidelines">
                            <h3>Important Guidelines</h3>
                            <ul>
                                <li>This ID card must be worn visibly at all times within company premises</li>
                                <li>Loss of ID card should be reported immediately to HR department</li>
                                <li>This card is non-transferable and misuse will lead to disciplinary action</li>
                                <li>Upon termination, this card must be surrendered to the HR department</li>
                            </ul>
                        </div>

                        
                    </div>
                </div>
                 <div class="download-btn">
      <a class="no-print" id="liveAlertBtn" href="DeleteIdCard.jsp?empid=<%=idb.getEmpId()%>">Delete</a>
      <a class="no-print" href="EditIdCard.jsp?empid=<%=idb.getEmpId()%>">Update</a>
      </div>  
            </div>

        </div>

        <%
            }
        %>
    </div>

</main>

    
    <script>
        
      const alertTrigger = document.getElementById("liveAlertBtn");
      if (alertTrigger) {
        alertTrigger.addEventListener("click", () => {
          appendAlert("Nice, you triggered this alert message!", "success");
          setTimeout(() => {
            const alert = document.querySelector(".alert");
            if (alert) {
              alert.style.display = "none";
            }
            // Refresh the page after 1 second
            window.location.reload();
          }, 1000);
        });
      }
      const alertPlaceholder = document.getElementById("liveAlertPlaceholder");
      const appendAlert = (message, type) => {
        const wrapper = document.createElement("div");
        wrapper.innerHTML = [
          `<div class="alert alert-${type} alert-dismissible" role="alert">`,
          `   <div>${message}</div>`,
          '   <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>',
          "</div>",
        ].join("");

        alertPlaceholder.append(wrapper);
      };
    </script>
    
<script>
    // Toggle mobile menu
    document.querySelector('.mobile-menu-button').addEventListener('click', function () {
        document.querySelector('.sidebar').classList.toggle('show');
    });
</script>
</body>
</html>
