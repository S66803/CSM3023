<%-- 
    Document   : bmi
    Created on : 26 Apr 2024, 10:28:31 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculate BMI</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Calculate BMI</h1>
        <div>
            <form action="calculateBMI.jsp" method="POST">
                <div>
                    <label>Weight (kg)</label>:
                    <input type="text" name="weight" placeholder="Enter weight" required>
                </div>
                <div>
                    <label>Height (m)</label>:
                    <input type="text" name="height" placeholder="Enter height" required>
                </div>
                <div>
                    <button type="submit">Calculate</button>
                </div>
            </form>
        </div>
        <footer>&copy; 2024-Muhd Imran</footer>
    </body>
</html>
