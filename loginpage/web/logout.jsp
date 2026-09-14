<%-- 
    Document   : logout
    Created on : 14 Sep, 2026, 9:24:48 AM
    Author     : SCMS
--%>

<%-- logout.jsp --%>
<%
// 1. Invalidate server-side session and flush stored attributes
session.invalidate();
// 2. Instruct browser to delete client-side cookie (Max-Age = 0)
Cookie killCookie = new Cookie("pref_theme", "");
killCookie.setMaxAge(0); // 0 seconds = immediate destruction
killCookie.setPath("/"); // Must match original scope
response.addCookie(killCookie);
response.sendRedirect("index.jsp");
%>