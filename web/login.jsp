<%-- 
    Document   : login
    Created on : Feb 23, 2014, 8:43:59 PM
    Author     : Adem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>

        <form method="POST" action="login_control.jsp">
            <table style="margin: 0 auto;">
                <tr>
                    <td>E-mail : </td>
                    <td><input type="text" name="email" /></td>
                </tr>
                <tr>
                    <td>Password : </td>
                    <td><input type="password" name="password" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Login" style="float:right;" /></td>
                </tr>
            </table>
        </form>
        
    </body>
</html>
