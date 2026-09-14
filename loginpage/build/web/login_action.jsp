<%-- 
    Document   : login_action
    Created on : 14 Sep, 2026, 8:58:54 AM
    Author     : SCMS
--%>

<%
String user = request.getParameter("usernameIn");
String theme = request.getParameter("prefTheme");
// 1. SENSITIVE: Store login state in server-side session
session.setAttribute("auth_user", user);
// 2. PERSISTENT: Store client UI preference in a Cookie (30 days)
Cookie themeCookie = new Cookie("pref_theme", theme);
themeCookie.setMaxAge(-1); // 30 days lifetime
themeCookie.setPath("/");
themeCookie.setHttpOnly(true); // Mitigate XSS attacks
themeCookie.setSecure(true); // Enforce HTTPS transmission
// 3. Attach cookie to response & redirect
response.addCookie(themeCookie);
response.sendRedirect("dashboard.jsp");
%>