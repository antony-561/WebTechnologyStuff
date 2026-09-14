<%-- 
    Document   : index
    Created on : 14 Sep, 2026, 8:54:23 AM
    Author     : SCMS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action = "login_action.jsp">
            <label for ="usernameIn">UserName</label>
            <input type ="text" name = "usernameIn" id ="usernameIn">
            <label for ="prefTheme">Theme : </label>
            <input type = "radio" name = "prefTheme" id = "darkTheme" value = "Dark">
            <label for ="darkTheme">Dark </label>
            <input type = "radio" name ="prefTheme" id ="lightTheme" value ="Light">
            <label for ="lightTheme">Light </label>
            <input type ="submit" id ="subBtn">
        </form>
    </body>
</html>
