<%-- 
    Document   : main_page
    Created on : Mar 9, 2014, 8:19:33 PM
    Author     : Adem
--%>

<%@page import="com.bilisimegitim.course.entity.Kullanici"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Giriş yapan kullanıcının adı : 
        <%
            Kullanici kullanici = (Kullanici)request.getSession(false).getAttribute("kullaniciBilgisi"); 
            out.write(kullanici.getKullaniciAd() + " " + kullanici.getKullaniciSoyad());
        %>
    </body>
</html>
