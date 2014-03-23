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
        <script type="text/javascript">
            function ajxCalistir() {

                var xmlhttp;
                if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp = new XMLHttpRequest();
                } else {// code for IE6, IE5
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }

                xmlhttp.onreadystatechange = function() {
                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                        alert(xmlhttp.response);
                        document.getElementById("sonuc").innerHTML = xmlhttp.response;
                        document.getElementById("sonucText").value = xmlhttp.response;
                    }
                }

                var url = "login_control.jsp";
                var params = "email="+document.getElementById("email").value;
                params = params + "&";
                params = params + "password=" + document.getElementById("password").value;
                url = url + "?" + params;
                
                xmlhttp.open("GET", url, true);
                xmlhttp.send();

            }
        </script>
    </head>
    <body>

        <table style="margin: 0 auto;">
            <tr>
                <td>E-mail : </td>
                <td><input type="text" id="email" /></td>
            </tr>
            <tr>
                <td>Password : </td>
                <td><input type="password" id="password" /></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="button" value="Login" onclick="ajxCalistir();" style="float:right;" /></td>
            </tr>
            <tr><td><span id="sonuc"></span></td><td><input type="text" id="sonucText" /></td></tr>
        </table>

    </body>
</html>
