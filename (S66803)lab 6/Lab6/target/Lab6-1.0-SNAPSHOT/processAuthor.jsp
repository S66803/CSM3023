<%-- 
    Document   : processAuthor
    Created on : 20 May 2024, 11:32:29 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <h1>Lab 6 - Task 2 - Perform creating and retrieving records via JSP page</h1>
    <jsp:useBean id="myAuthor" class="lab6.com.Author" scope="request"/>
    <jsp:setProperty name="myAuthor" property="*"/>
    <%
        Connection myConnection = null;
        PreparedStatement myPS = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String myURL = "jdbc:mysql://localhost:3306/csm3023";
            myConnection = DriverManager.getConnection(myURL, "root", "admin");

            String sInsertQry = "INSERT INTO author(authno, name, address, city, state, zip) VALUES(?, ?, ?, ?, ?, ?)";
            myPS = myConnection.prepareStatement(sInsertQry);

            myPS.setString(1, myAuthor.getAuthno());
            myPS.setString(2, myAuthor.getName());
            myPS.setString(3, myAuthor.getAddress());
            myPS.setString(4, myAuthor.getCity());
            myPS.setString(5, myAuthor.getState());
            myPS.setString(6, myAuthor.getZip());

            int result = myPS.executeUpdate();
            if (result > 0) {
                out.println("Record successfully added into Author table...!");
                out.print("<p>Record with author no " + myAuthor.getAuthno() + " successfully created..!</p>");
                out.print("<p>Details of record are:</p>");
                out.print("<p>Name: " + myAuthor.getName() + "</p>");
                out.print("<p>Address: " + myAuthor.getAddress() + "</p>");
                out.print("<p>City: " + myAuthor.getCity() + "</p>");
                out.print("<p>State: " + myAuthor.getState() + "</p>");
                out.print("<p>Zip: " + myAuthor.getZip() + "</p>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p>Error: " + e.getMessage() + "</p>");
        } finally {
            if (myPS != null) {
                try {
                    myPS.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (myConnection != null) {
                try {
                    myConnection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    %>
</body>
</html>

