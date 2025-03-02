<%-- 
    Document   : idcard
    Created on : 24 Feb 2025, 11:07:58 pm
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
         <link rel="stylesheet" href="idcard.css">
        <title>ID Card</title>
    </head>
    <body>
         <div class="container">

    <div class="card-preview">
        
        
         <%
             
                 int id = Integer.parseInt(request.getParameter("empid"));
                 IdCardDAO ido = new IdCardDAO();
                 IdCardBean idb = ido.findById(id);
                     
                 
                         
             %>

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
             <input value='Download' class="no-print" type='button' onclick='printPage()'/>
    </div>
    </body>
</html>


<style>
 
  @media print {
    .no-print {
        display: none;
    }
      @page {
          margin-left: 0.8in;
          margin-right: 0.8in;
          margin-top: 0;
          margin-bottom: 0;
      }
      * {
          -webkit-print-color-adjust: exact !important;
          color-adjust: exact !important;
          print-color-adjust: exact !important;
      }
  }
</style>
</html> 
<script type="text/javascript">
  function printPage() {
      window.print();
  }
</script>
