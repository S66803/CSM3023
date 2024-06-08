<%-- 
    Document   : notificationRegister
    Created on : 1 Jun 2024, 10:36:45 pm
    Author     : muhdi
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Notification</title>
</head>
<body>
    <h1>Registration Notification</h1>
    <%
        String studentId = (String) session.getAttribute("studentid");
        String name = (String) session.getAttribute("name");

        if (studentId != null && name != null) {
    %>
        <p>Registration successful for Student ID: <%= studentId %> and Name: <%= name %></p>
    <%
        session.invalidate(); // End the session
        } else {
    %>
        <p>No registration information found.</p>
    <%
        }
    %>
</body>
</html>
