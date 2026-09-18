<%-- 
    Document   : index
    Created on : 18 Sep, 2026, 4:08:59 AM
    Author     : SCMS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<%
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table>
            <tr>
                <th>Id</th><th>Name</th><th>Age</th>
            </tr>
            <tr>
                <% 
                    String url = "jdbc:mysql://localhost:3306/studentdb?sslMode=DISABLED";
                    String user = "root";
                    String pass = "";
                    
                    Connection conn = null;
                    Statement stat = null;
                    ResultSet rs = null;
                    
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection(url,user,pass);
                        stat = conn.createStatement();
                        rs = stat.executeQuery("select * from student;");
                        
                        while(rs.next())
                        {
                            %>
                                <td> <%= rs.getString("id") %> <td>
                                <td> <%= rs.getString("name") %> <td>
                                <td> <%= rs.getString("age") %> <td>
                            <%
                        }
                    }
                    
                    catch(Exception e){
                        out.println(e);
                        %>
                        <h1>HELLO</h1>
                        <%
                    }
                %>
            </tr>
        </table>
    </body>
</html>
