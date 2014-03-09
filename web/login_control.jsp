<%-- 
    Document   : login_control
    Created on : Feb 23, 2014, 9:01:55 PM
    Author     : Adem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.bilisimegitim.course.dao.KullaniciDAO" %>
<%@page import="com.bilisimegitim.course.entity.Kullanici" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Control</title>
    </head>
    <body>
        <%
        boolean onaylandi = true;
        String email = request.getParameter("email");
        String sifre = request.getParameter("password");
        
        if(onaylandi == false){
            out.write("E-mail veya şifre yanlış");
        } else {
            KullaniciDAO kullaniciDao = new KullaniciDAO();
            Kullanici kullanici = kullaniciDao.getKullanici(email);
            if(kullanici == null){
                out.write("Kullanıcı bulunamadı");
            } else {
                if(kullanici.getSifre().equals(sifre)){
                    request.getSession(true).setAttribute("kullaniciBilgisi", kullanici);
                    request.getRequestDispatcher("/main_page.jsp").forward(request, response);
                } else {
                    out.write("Şifre yanlış");
                }
            }
        }
        %>
    </body>
</html>
