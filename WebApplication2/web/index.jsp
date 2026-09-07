<%-- 
    Document   : index
    Created on : 7 Sep, 2026, 8:48:20 AM
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
        <form action = "index.jsp" method = "post">
            <input  type ="number" name = "num1" required>
            <input type ="number" name = "num2" required>
            <input type = "Submit" name = "btn" value = "add"> 
            <input type = "Submit" name = "btn" value = "sub"> 
            <input type = "Submit" name = "btn" value = "mult"> 
            <input type = "Submit" name = "btn" value = "div"> 
        </form>
        <%
            int res = 0;
            String val1 = request.getParameter("num1");
            String val2 = request.getParameter("num2");
            String op = request.getParameter("btn");
        %> 
            <p> <%= op %>  </p> 
        <%
            if(val1 != null && val2 != null)
            {
                if(op.equals("add"))
                {
                    int n1 = Integer.parseInt(val1);
                    int n2 = Integer.parseInt(val2);
                    res = n1+n2;
                }
                if(op.equals("sub"))
                {
                    int n1 = Integer.parseInt(val1);
                    int n2 = Integer.parseInt(val2);
                    res = n1-n2;
                }
                if(op.equals("mult"))
                {
                    int n1 = Integer.parseInt(val1);
                    int n2 = Integer.parseInt(val2);
                    res = n1*n2;
                }
                if(op.equals("div"))
                {
                    int n1 = Integer.parseInt(val1);
                    int n2 = Integer.parseInt(val2);
                    res = n1/n2;
                }
            }
        %>
        <p>Result = <%= res %> </p>
    </body>
</html>
