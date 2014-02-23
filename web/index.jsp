<%-- 
    Document   : index
    Created on : Feb 23, 2014, 6:23:45 PM
    Author     : Adem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello Class!</h1>


        <OL>
            <LI><jsp:include page="inc/item1.jsp" />
            <LI><jsp:include page="inc/item2.jsp" />
            <LI><jsp:include page="inc/item3.jsp" />
        </OL>

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
