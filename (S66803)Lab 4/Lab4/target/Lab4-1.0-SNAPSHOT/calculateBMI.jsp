<%-- 
    Document   : calculateBMI
    Created on : 26 Apr 2024, 10:29:48 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<%@ page import="java.text.DecimalFormat" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculate BMI</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            double weight = Double.parseDouble(request.getParameter("weight"));
            double height = Double.parseDouble(request.getParameter("height"));
            double bmi = 0.00;
            String msg = "";
            
            bmi = weight / (height * height);  // Corrected formula
            
            if (bmi < 18.5) {
                msg = "Underweight";
            } else if (bmi < 25) {
                msg = "Optimal";
            } else {
                msg = "Overweight";
            }
            
            DecimalFormat df = new DecimalFormat("0.00");
        %>
        <h1>Result</h1>
        <div>
            Your BMI is <%= df.format(bmi) %>. You are <%= msg %>.
        </div>
        <% request.getRequestDispatcher("bmi.jsp").include(request, response); %> <!-- Optional, if needed -->
    </body>
</html>
