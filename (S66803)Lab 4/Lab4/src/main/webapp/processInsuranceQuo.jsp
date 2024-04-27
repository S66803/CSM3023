<%-- 
    Document   : processInsuranceQuo
    Created on : 26 Apr 2024, 9:30:21 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Insurance Quotation - JSP</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            String icno = request.getParameter("icno");
            String name = request.getParameter("name");
            int price = Integer.parseInt(request.getParameter("price"));
            String ct = request.getParameter("coverageType");
            String dc = request.getParameter("discount");
            double insurance = 0;
            double gst = 0;
            double total = 0;
            
            DecimalFormat df = new DecimalFormat("0.00");
            
            //Third Party
            if(ct.equals("1") && dc.equals("1"))
                insurance = (3.3/100) * price;
            if(ct.equals("1") && dc.equals("2"))
                insurance = (2.5/100) * price;
            if(ct.equals("1") && dc.equals("3"))
                insurance = (1.8/100) * price;
            if(ct.equals("1") && dc.equals("4"))
                insurance = (1.2/100) * price;
                
            //Comprehensive
            if(ct.equals("2") && dc.equals("1"))
                insurance = (3.8/100) * price;
            if(ct.equals("2") && dc.equals("2"))
                insurance = (3.0/100) * price;
            if(ct.equals("2") && dc.equals("3"))
                insurance = (2.4/100) * price;
            if(ct.equals("2") && dc.equals("4"))
                insurance = (1.8/100) * price;
                
            //GST
            gst = 0.06 * insurance;
            //Total
            total = gst + insurance;
        %>
        <h1>Insurance Quotation</h1>
        <div>
            <fieldset>
                <legend>Details of Insurance Quotation</legend>
                <div>
                    <label>IC No</label>: <label><%= icno %></label>
                </div>
                <div>
                    <label>Customer name</label>: <label><%= name %></label>
                </div>
                <div>
                    <label>Market price</label>: <label><%= price %></label>
                </div>
                <div>
                    <label>Coverage type</label>: <label><%= ct %></label>
                </div>
                <div>
                    <label>No claim discount (NCD)</label>: <label><%= dc %></label>
                </div>
                <div>
                    <label>Insurance amount</label>: 
                    <label><%= df.format(insurance) %></label>
                </div>
                <div>
                    <label>6% GST</label>:
                    <label><%= df.format(gst) %></label>
                </div>
                <div>
                    <label>Final amount (+ 6% GST)</label>:
                    <label><%= df.format(total) %></label>
                </div>
            </fieldset>
        </div>
        <footer>&copy; 2024-Muhd Imran</footer>
    </body>
</html>
