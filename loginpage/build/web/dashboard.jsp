<%-- 
    Document   : dashboard
    Created on : 14 Sep, 2026, 9:04:35 AM
    Author     : SCMS
--%>
<%-- dashboard.jsp --%>
<%
// 1. Validate active server-side session (Authentication check)
String authUser = (String) session.getAttribute("auth_user");
if (authUser == null) 
{
    response.sendRedirect("index.jsp");
    return;
}
// 2. Read persistent preference from cookies array
String currentTheme = "light"; // fallback default
Cookie[] cookies = request.getCookies();
String themePage = "";
if (cookies != null) 
{
    for (Cookie c : cookies) 
    {
        if ("pref_theme".equals(c.getName())) 
        {
            currentTheme = c.getValue();
            break;
        }
    }
}
%>
<html>
    <head>
        <% 
        if (currentTheme.equals("Dark"))
        { 
        %>
            <link rel = "stylesheet" href = "Dark.css" > 
        <%
        }
        else
        {
        %>
            <link rel = "stylesheet" href = "Light.css">
        <%
        }
        %>
    </head>
    <body>
        <h1>You are <%= authUser %> </h1>
        <h2> Your preferred theme is <%= currentTheme %> </h2>
        <form action = "logout.jsp">
            <input type ="submit" id ="exitBtn" value = "logout">
        </form>
    </body>
</html>