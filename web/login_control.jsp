<%-- 
    Document   : login_control
    Created on : Feb 23, 2014, 9:01:55 PM
    Author     : Adem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.bilisimegitim.course.dao.KullaniciDAO" %>
<%@page import="com.bilisimegitim.course.entity.Kullanici" %>

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
                    //request.getSession(true).setAttribute("kullaniciBilgisi", kullanici);
                    //request.getRequestDispatcher("/main_page.jsp").forward(request, response);
                    out.write("giriş onaylandı");
                } else {
                    out.write("<table border='1'><tr><td>Şifre yanlış</td></tr><tr><td>Şifre yanlış</td></tr><tr><td>Şifre yanlış</td></tr><tr><td>Şifre yanlış</td></tr></table>");
                }
            }
        }
        %>

