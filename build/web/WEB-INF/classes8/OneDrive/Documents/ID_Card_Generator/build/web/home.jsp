<%-- 
    Document   : home
    Created on : 22 Feb 2025, 10:43:08 pm
    Author     : adi18
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ID Card Generator</title>
        <link rel="stylesheet" href="home.css">
    </head>
   <body>
  <nav class="navbar">
    <div class="nav-content">
      <div class="nav-logo">
        <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-building-2"><path d="M6 22V4c0-.27 0-.55.07-.82a1.98 1.98 0 0 1 1.1-1.11C7.46 2 7.73 2 8 2h8c.27 0 .55 0 .82.07a1.98 1.98 0 0 1 1.11 1.1C18 3.46 18 3.73 18 4v18"/><path d="M2 14v6c0 .27 0 .55.07.82a1.98 1.98 0 0 0 1.1 1.11c.28.07.56.07.83.07h16c.27 0 .55 0 .82-.07a1.98 1.98 0 0 0 1.11-1.1c.07-.28.07-.56.07-.83v-6"/><path d="M5 13v-3c0-.27 0-.55.07-.82a1.98 1.98 0 0 1 1.1-1.11C6.46 8 6.73 8 7 8h10c.27 0 .55 0 .82.07a1.98 1.98 0 0 1 1.11 1.1c.07.28.07.56.07.83v3"/><path d="M6 17h4"/><path d="M14 17h4"/><path d="M6 13h12"/><path d="M6 5h12"/><path d="M6 9h12"/></svg>
        <span>TechCorp</span>
      </div>
      <div class="nav-links">
          <a href="https://images.app.goo.gl/5ipSG6Ne4C7LbaVE8">    <img src="https://images.app.goo.gl/5ipSG6Ne4C7LbaVE8" alt=""> </a>
          <a href="adminlogin.jsp" class="nav-link"> <button class="signup-btn">Admin Login</button></a>
          
      </div>
    </div>
  </nav>

  <div class="container">
    <header>
      <div class="header-content">
        <div class="header-text">
          <h1>TechCorp ID Card Generator</h1>
          <p>Create professional employee identification cards with ease</p>
        </div>
        <div class="header-images">
          <img src="https://images.unsplash.com/photo-1560250097-0b93528c311a?w=300&h=200&fit=crop" alt="Professional" class="header-img">
          <img src="https://images.unsplash.com/photo-1522071820081-009f0129c71c?w=300&h=200&fit=crop" alt="Team" class="header-img">
        </div>
      </div>
    </header>

    <main>
      <div class="form-container">
        <form id="idCardForm">
          <div class="form-grid">
            <div class="form-group">
              <label for="fullName">Full Name</label>
              <input type="text" id="fullName" required>
            </div>
            
            <div class="form-group">
              <label for="role">Role</label>
              <input type="text" id="role" required>
            </div>
            
            <div class="form-group">
              <label for="department">Department</label>
              <input type="text" id="department" required>
            </div>
            
            <div class="form-group">
              <label for="employeeId">Employee ID</label>
              <input type="text" id="employeeId" required>
            </div>
            
            <div class="form-group">
              <label for="location">Location</label>
              <input type="text" id="location" required>
            </div>
            
            <div class="form-group">
              <label for="bloodGroup">Blood Group</label>
              <select id="bloodGroup" required>
                <option value="">Select Blood Group</option>
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
            <label for="Contact">Contact</label>
            <input type="tel" id="emergencyContact" required>
          </div>

          <div class="form-group">
            <label for="photo">Photo URL</label>
            <div class="photo-input">
              <input type="url" id="photo" value="https://images.unsplash.com/photo-1633332755192-727a05c4013d?w=150&h=150&fit=crop">
              <button type="button" class="upload-btn">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-upload"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"/><polyline points="17 8 12 3 7 8"/><line x1="12" y1="3" x2="12" y2="15"/></svg>
              </button>
            </div>
          </div>

          <input type="submit" class="submit-btn" value="Generate ID Card">
        </form>
      </div>

      <div class="card-preview">
        <div class="card-toggle">
          <button class="toggle-btn active" data-side="front">Front Side</button>
          <button class="toggle-btn" data-side="back">Back Side</button>
        </div>

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
              <img src="https://images.unsplash.com/photo-1633332755192-727a05c4013d?w=150&h=150&fit=crop" alt="Employee Photo" class="employee-photo">
              <div class="camera-icon">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-camera"><path d="M14.5 4h-5L7 7H4a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2h-3l-2.5-3z"/><circle cx="12" cy="13" r="3"/></svg>
              </div>
            </div>

            <div class="employee-info">
              <h2 class="employee-name">John Doe</h2>
              <p class="employee-role">Software Engineer</p>
              
              <div class="info-item">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-shield"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10"/></svg>
                <span>ID: EMP123</span>
              </div>
              
              <div class="info-item">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-building-2"><path d="M6 22V4c0-.27 0-.55.07-.82a1.98 1.98 0 0 1 1.1-1.11C7.46 2 7.73 2 8 2h8c.27 0 .55 0 .82.07a1.98 1.98 0 0 1 1.11 1.1C18 3.46 18 3.73 18 4v18"/><path d="M2 14v6c0 .27 0 .55.07.82a1.98 1.98 0 0 0 1.1 1.11c.28.07.56.07.83.07h16c.27 0 .55 0 .82-.07a1.98 1.98 0 0 0 1.11-1.1c.07-.28.07-.56.07-.83v-6"/><path d="M5 13v-3c0-.27 0-.55.07-.82a1.98 1.98 0 0 1 1.1-1.11C6.46 8 6.73 8 7 8h10c.27 0 .55 0 .82.07a1.98 1.98 0 0 1 1.11 1.1c.07.28.07.56.07.83v3"/><path d="M6 17h4"/><path d="M14 17h4"/><path d="M6 13h12"/><path d="M6 5h12"/><path d="M6 9h12"/></svg>
                <span>Engineering</span>
              </div>
              
              <div class="info-item">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-map-pin"><path d="M20 10c0 6-8 12-8 12s-8-6-8-12a8 8 0 0 1 16 0Z"/><circle cx="12" cy="10" r="3"/></svg>
                <span>San Francisco, CA</span>
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
              <p>O+</p>
            </div>
            <div class="info-group">
              <label>Emergency Contact</label>
              <p>+1 (555) 123-4567</p>
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

          <div class="company-address">
            <h3>Company Address</h3>
            <p>
              TechCorp Headquarters<br>
              123 Innovation Drive<br>
              Tech Valley, CA 94025<br>
              support@techcorp.com
            </p>
          </div>
        </div>
      </div>
    </main>
  </div>
</body>
</html>
