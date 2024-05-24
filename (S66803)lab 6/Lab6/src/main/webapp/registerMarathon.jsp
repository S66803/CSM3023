<%-- 
    Document   : registerMarathon
    Created on : 21 May 2024, 11:58:31 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Marathon 2024</title>
    </head>
    <body>
        <h1>Marathon 2024</h1>
        <fieldset>
            <legend>Marathon Registration</legend>
            <form action="processMarathon.jsp" method="post">
                <table>
                    <tr>
                        <td>
                            <label for="icno">IC No</label>
                        </td>
                        <td>
                            <input type="text" id="icno" name="icno" placeholder="E.g.: 921110-10-2514">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="name">Name</label>
                        </td>
                        <td>
                            <input type="text" id="name" name="name" placeholder="Enter your name">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="category">Category</label>
                        </td>
                        <td>
                            <select id=category name="category">
                                <option value="5 KM">5 KM</option>
                                <option value="7 KM">7 KM</option>
                                <option value="10 KM">10 KM</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="submit" value="Submit">Submit</button>
                            <button type="reset" value="Reset">Cancel</button>
                        </td>
                    </tr>
                </table>
            </form>
        </fieldset>
        <footer>
            <p>&copy;Marathon 2024</p>
        </footer>
    </body>
</html>

