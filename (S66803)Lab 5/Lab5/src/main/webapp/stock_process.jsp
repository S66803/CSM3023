<%-- 
    Document   : stock_process
    Created on : 13 May 2024, 12:02:16 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Stock Purchase Results</title>
</head>
<body>
    <c:set var="shareNum" value="${param.shareNum}" />
    <c:set var="sharePrice" value="${param.sharePrice}" />
    <c:set var="comRate" value="${param.comRate}" />

    <jsp:useBean id="purchase" class="lab5.com.Stock">
        <jsp:setProperty name="purchase" property="numShares" value="${shareNum}" />
        <jsp:setProperty name="purchase" property="pricePerShare" value="${sharePrice}" />
        <jsp:setProperty name="purchase" property="commissionRate" value="${comRate / 100}" />
    </jsp:useBean>

    <h2>Stock Purchase Details</h2>
    <p>Number of Shares: <c:out value="${purchase.getNumShares()}" /></p>
    <p>Price per Share: <fmt:formatNumber type="currency" currencySymbol="RM" groupingUsed="false" maxFractionDigits="2" value="${purchase.getPricePerShare()}" /></p>
    <p>Commission Rate: <fmt:formatNumber type="number" groupingUsed="false" maxFractionDigits="0" value="${purchase.getCommissionRateAsPercentage()}" />%</p>
    <br>

    <h2>Stock Purchase Results</h2>
    <p>Stock Cost: <fmt:formatNumber type="currency" currencySymbol="RM" groupingUsed="false" maxFractionDigits="2" value="${purchase.calculateStockCost()}" /></p>
    <p>Commission: <fmt:formatNumber type="currency" currencySymbol="RM" groupingUsed="false" maxFractionDigits="2" value="${purchase.calculateCommission()}" /></p>
    <p>Total Cost: <fmt:formatNumber type="currency" currencySymbol="RM" groupingUsed="false" maxFractionDigits="2" value="${purchase.calculateTotalCost()}" /></p>
</body>
</html>
