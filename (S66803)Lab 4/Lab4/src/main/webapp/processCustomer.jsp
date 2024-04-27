<%-- 
    Document   : processCustomer
    Created on : 24 Apr 2024, 2:49:19 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Scripting</title>
    </head>
    <body>
        <h1>Use JSP Scriplet and JSP Expression in Application</h1>
        <%
            final int price = 10;

            String cust_code = request.getParameter("cust_code"); // Corrected variable name
            int quantity = Integer.parseInt(request.getParameter("quantity")); // Corrected variable name
            String cust_type1 = request.getParameter("cust_type"); // Corrected variable name
            
            if (cust_type1.equals("1") && quantity > 100) {
                out.print("You're entitled to a 10% discount.");
                out.print("<br>Total amount is RM " + (quantity * price * 0.9)); // Corrected math and variable
            } else if (cust_type1.equals("2") && quantity > 100) {
                out.print("You're entitled to a 25% discount.");
                out.print("<br>Total amount is RM " + (quantity * price * 0.75)); // Corrected math and variable
            } else {
                out.print("You're not entitled to a discount.");
                out.print("<br>Total amount is RM " + (quantity * price)); // Corrected variable
            }
        %>
    </body>
</html>
