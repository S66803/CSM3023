<%-- 
    Document   : processUser
    Created on : 11 May 2024, 12:30:42 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Registration</title>
</head>
<body>
    <h1>Retrieve info using c:param & display it using c:out</h1>

    <p>Name: <c:out value="${param.userName}" /></p>
    <p>Surname: <c:out value="${param.userSurname}" /></p>
    <p>
        Gender:
        <c:choose>
            <c:when test="${param.userGender == 1}">Male</c:when>
            <c:when test="${param.userGender == 2}">Female</c:when>
        </c:choose>
    </p>
    <p>
        Type of user:
        <c:choose>
            <c:when test="${param.userType == 1}">Beginner</c:when>
            <c:when test="${param.userType == 2}">Intermediate</c:when>
            <c:when test="${param.userType == 3}">Advanced</c:when>
        </c:choose>
    </p>
    <p>
        Preferred Language(s):
        <c:choose>
            <c:when test="${paramValues.userLanguage != null}">
                <c:forEach items="${paramValues.userLanguage}" var="lang">
                    <c:choose>
                        <c:when test="${lang == 1}">Malay</c:when>
                        <c:when test="${lang == 2}">English</c:when>
                        <c:when test="${lang == 3}">Mandarin</c:when>
                        <c:when test="${lang == 4}">Tamil</c:when>
                    </c:choose>
                </c:forEach>
            </c:when>
            <c:otherwise>None Selected</c:otherwise>
        </c:choose>
    </p>
</body>
</html>


