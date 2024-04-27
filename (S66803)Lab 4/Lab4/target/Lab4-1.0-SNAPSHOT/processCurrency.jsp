<%-- 
    Document   : processCurrency
    Created on : 24 Apr 2024, 3:54:43 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Process Currency - JSP</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Use JSP Declaration tag, JSP Scriplet and JSP Expression in Application</h1>
        <h2>Currency Conversion</h2>
        <div>
            <%
                String currency = request.getParameter("currency");
                int amount = Integer.parseInt(request.getParameter("amount"));
            %>
            <%!
                final double USD = 3.92;
                final double STG = 5.96;
                final double EURO = 4.47;
                
                private DecimalFormat df = new DecimalFormat("0.00");
                
                private double calculateRate(String currency, int amount) 
                {
                    double currencyChange = 0;

                    if(currency.contains("1")) {
                        currencyChange = (amount / USD);
                    }
                    if(currency.contains("2")) {
                        currencyChange = (amount / STG);   
                    }    
                    if(currency.contains("3")) {
                        currencyChange = (amount / EURO);
                    }
                        return Double.parseDouble(df.format(currencyChange));
                }

                private String currencyName(String currency) 
                {
                    String currName = "";

                    if(currency.contains("1")) {
                        currName = "Amount in USD is $";
                    }
                    if(currency.contains("2")) {
                        currName = "Amount in Pound STG is &pound;";   
                    }    
                    if(currency.contains("3")) {
                        currName = "Amount in EURO is &euro;";
                    }
                        return currName;
                }
            %>
            <%
                out.print("Amount in Ringgit Malaysia is RM" + amount + "<br>");
                out.print(currencyName(currency) + calculateRate(currency, amount));
            %>
        </div><br>
        <footer>&copy; 2024-Muhd Imran</footer>
    </body>
</html>
