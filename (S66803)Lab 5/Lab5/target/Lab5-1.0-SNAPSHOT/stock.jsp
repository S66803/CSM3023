<%-- 
    Document   : stock
    Created on : 13 May 2024, 11:14:29 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Stock Purchase</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <h1>Stock Purchase</h1>
    <form action="stock_process.jsp">
        <table>
            <tr>
                <td><label for="shareNum">Number of Shares:</label></td>
                <td><input type="number" name="shareNum" id="shareNum" min="0" required></td>
            </tr>
            <tr>
                <td><label for="sharePrice">Price per Share:</label></td>
                <td><input type="number" name="sharePrice" id="sharePrice" min="0" step="0.01" required></td>
            </tr>
            <tr>
                <td><label for="comRate">Commission Rate (%):</label></td>
                <td><input type="number" name="comRate" id="comRate" min="0" max="100" required></td>
            </tr>
            <tr>
                <td><br><button type="submit">Calculate</button></td>
            </tr>
        </table>
    </form>
</body>
</html>
