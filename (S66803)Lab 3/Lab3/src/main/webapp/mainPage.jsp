<%-- 
    Document   : mainPage
    Created on : 19 Apr 2024, 4:49:16 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Use Include Directive - JSP</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
        <body>
            <div>
            <%@ include file="headerPage.jsp" %>
            <h2>Using JSP Include Directive</h2>

            <p style="color: red;">
                Java Server Page (JSP) is a technology for controlling the content<br>
                or appearance of Web pages through the use of servlets, small programs<br>
                that are specified in the Web pages and run on the Web server to modify<br>
                the web page before it sent to the user who requested it.
            </p>
            <%@ include file="footerPage.jsp" %>
            </div>
        </body>
</html>

