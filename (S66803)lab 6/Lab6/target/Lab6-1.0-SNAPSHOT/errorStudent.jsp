<%-- 
    Document   : errorStudent
    Created on : 20 May 2024, 11:51:13 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 Task 3</title>
    </head>
    <body>
        <form id="errorFrm" action="insertStudent.jsp" method="post">
            <h1>Lab 6 - Task 3 - Create Record Contrained by Regular Expression In JSP</h1>
            <p>Error occur when inserting record...!</p>
            <p>Error Message: ${exception.getMessage()}</p>
            <br>
        </form>
    </body>
</html>
