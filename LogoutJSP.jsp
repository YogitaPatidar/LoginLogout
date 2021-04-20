<%-- 
    Document   : LogoutJSP
    Created on : 07-Apr-2021, 22:41:41
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.removeAttribute("name");
            session.invalidate();
            response.sendRedirect("LoginJSP.jsp");
            %>
    </body>
</html>
