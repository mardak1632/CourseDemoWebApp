<%-- 
    Document   : index
    Created on : Feb 23, 2014, 6:23:45 PM
    Author     : Adem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="resources/js/jquery-ui-1.10.4/js/jquery-1.10.2.js"></script>
        <script src="resources/js/jquery-ui-1.10.4/js/jquery-ui-1.10.4.custom.min.js"></script>
        <script src="resources/js/bizimScript.js"></script>
        <link rel="stylesheet" type="text/css" href="resources/js/jquery-ui-1.10.4/css/redmond/jquery-ui-1.10.4.custom.min.css">
        <link rel="stylesheet" type="text/css" href="resources/css/common.css">
    </head>
    <body>

        <input type="button" id="tikla" value="pencere aç" />


        <div id="accordion">
            <h3>Section 1</h3>
            <div>
                <p>
                    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
                    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
                    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
                    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
                </p>
            </div>
            <h3>Section 2</h3>
            <div>
                <p>
                    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
                    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
                    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
                    suscipit faucibus urna.
                </p>
            </div>
            <h3>Section 3</h3>
            <div>
                <p>
                    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
                    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
                    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
                    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
                </p>
                <ul>
                    <li>List item one</li>
                    <li>List item two</li>
                    <li>List item three</li>
                </ul>
            </div>
            <h3>Section 4</h3>
            <div>
                <p>
                    Cras dictum. Pellentesque habitant morbi tristique senectus et netus
                    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
                    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
                    mauris vel est.
                </p>
                <p>
                    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
                    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
                    inceptos himenaeos.
                </p>
            </div>
        </div>



<div id="pencere" title="Bizim dialog">
  <p>This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>
</div>


        <a href="hakkimizda/bizkimiz.jsp">biz kimiz</a>
        <br/>
        <a href="hakkimizda/neleryaptik.jsp">neler yaptık</a>
        <br/>
        <a href="iletisim/adres/adres.jsp">adres</a>
        <br/>
        <a href="iletisim/telefonlar.jsp">telefonlar</a>
        <br/>
        <br/>


        <a href="urunler/urunler.jsp?urun_grubu=1">kitaplar</a>
        <br/>
        <a href="urunler/urunler.jsp?urun_grubu=2">filmler</a>
        <br/>
        <a href="urunler/urunler.jsp?urun_grubu=3">notebooklar</a>
        <br/>
        <a href="urunler/urunler.jsp?urun_grubu=4">pcler</a>
        <br/>
        <a href="urunler/urunler.jsp?urun_grubu=5">akıllı telefonlar</a>
        <br/>


        <table border="1">
            <%
                for (int i = 0; i < 10; i++) {
            %>
            <tr>
                <td>
                    <%=(i + 1)%>
                </td>
                <td>
                    <input type="text" />
                </td>
                <td>
                    <input type="button" value="Tıkla" onclick="alert('deneme')" />
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
