<%-- 
    Document   : ArrayList
    Created on : 19 Apr 2024, 3:55:03 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Use Java ArrayList</title>
</head>
<body>
    <h1>Use JSP Page Directive</h1>
    <%
        // Create ArrayList object
        ArrayList<String> studentList = new ArrayList<>();
        
        studentList.add("Mohammad Azam");
        studentList.add("Peter Chong");
        studentList.add("Rahimah Mansor");
        studentList.add("Sri Devi");
        studentList.add("Ng Hue Ween");
        studentList.add("S. Nagarajan");
        
        out.println("<p><font color=\"blue\">The number of records in ArrayList are " + studentList.size() + "</font></p>");
        
        for (int i = 0; i < studentList.size(); i++) {
            out.println("<p><font color=\"blue\">Record " + (i + 1) + " is </font><font color=\"blue\">" + studentList.get(i) + "</font></p>");
        }
    %>
    <br/>
    <footer>&copy; 2024-Muhd Imran</footer>
</body>
</html>


