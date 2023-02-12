<%-- 
    Document   : home
    Created on : 8-Feb-2023, 1:49:32 AM
    Author     : Krushang Prajapati
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h1>Home Page</h1>
        <h4>
            Hello ${User.username}.
        </h4>
        <a href="login?logout">
            Log out
        </a>
    </body>
</html>
