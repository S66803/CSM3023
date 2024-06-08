<%-- 
    Document   : profile
    Created on : 1 Jun 2024, 10:08:33 pm
    Author     : muhdi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Register</title>
    </head>
    <body>
        <br/>
        <p><b>New Record</b></p>
        <form name="formAddProfile" action="profileServlet" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Username :</td>
                        <td><input type="text" id="username" name="username" maxlength="50" required /></td>
                    </tr>
                    <tr>
                        <td>IC Number :</td>
                        <td><input type="text" id="icno" name="icno" maxlength="50" /></td>
                    </tr>
                    <tr>
                        <td>First Name :</td>
                        <td><input type="text" id="firtname" name="firstname" maxlength="50" /></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Register" name="submit" />
                            <input type="reset" value="Cancel" name="cancel" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
