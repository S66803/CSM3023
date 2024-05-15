<%-- 
    Document   : fmt_parseDate
    Created on : 12 May 2024, 12:43:44 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>fmt:parseDate Examples</title>
</head>
<body>
    <h2>fmt:parseDate Examples</h2>

    <c:set var="dateTimeString" value="17-11-2015 11:49" />
    <h4>
        dateTimeString:
        <c:out value="${dateTimeString}" />
    </h4>

    <!-- Parsing a date time string, and storing in a variable of type java.util.Date -->
    <fmt:parseDate value="${dateTimeString}" type="both" var="parsedDateTime" pattern="dd-MM-yyyy HH:mm" />
    <p>
        The date after parsing:
        <c:out value="${parsedDateTime}" />
    </p><br>
    <p>
        Date only (dd/MM/yyyy):
        <fmt:formatDate value="${parsedDateTime}" pattern="dd/MM/yyyy" />
    </p>
</body>
</html>

