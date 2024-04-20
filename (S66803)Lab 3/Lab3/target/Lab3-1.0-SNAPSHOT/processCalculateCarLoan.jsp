<%-- 
    Document   : processCalculateCarLoan
    Created on : 19 Apr 2024, 3:41:57 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process Calculation</title>
    </head>
    <body>
        <%
            String LAmount = request.getParameter("amount");
            String period = request.getParameter("period");
            double interest = 0;
            
            if(Integer.parseInt(period) > 5) {
                interest = Integer.parseInt(LAmount) * Integer.parseInt(period) * 0.045;
            }
            else {
                interest = Integer.parseInt(LAmount) * Integer.parseInt(period) * 0.028;
            }
            
            double result = Integer.parseInt(LAmount) + interest;
        %>
        <h1>Perform Car Loan Calculation</h1>
        <div>
            <fieldset>
                <legend>Details of car loan</legend>
                <div>
                    <label>Loan Request</label>: <%= LAmount %>
                </div>
                <div>
                    <label>Period of payment</label>: <%= period %>
                </div>
                <div>
                    Total Loan + (interest) : <%= result %>
                </div>
            </fieldset>
        </div>
    </body>
    <br/>
        <footer>&copy2024-Muhd Imran</footer>
</html>
