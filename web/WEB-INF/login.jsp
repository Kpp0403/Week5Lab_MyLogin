<%-- 
    Document   : login
    Created on : 8-Feb-2023, 1:49:15 AM
    Author     : Krushang Prajapati
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="login" method="post">
            <table>
                <tr>
                    <th>
                        Username: 
                    </th>
                    <td>
                        <input type="textbox" name="username" value="${username}" placeholder="username" autofocus required> 
                    </td>
                </tr>
                <tr>
                    <th>
                        Password: 
                    </th>
                    <td>
                        <input type="password" name="password" placeholder="password" required> 
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Login" name="submit">
                    </td>
                </tr>
            </table>
        </form>
        <c:if test="${invalid == true}">
            <p>*Please check Username and/or Password. Enter Correct details.</p>
        </c:if>
        <c:if test="${loggedout == true}">
            <p>Successfully logged out.</p>
        </c:if>
    </body>
</html>
