<%-- 
    Document   : Exercise2
    Created on : 19 Apr 2024, 5:42:55 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculate Area of Rectangle - JSP</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Calculate Rectangle Area</h1>
        <div>
            <form action="ex2p2.jsp" method="POST">
                <fieldset>
                    <legend>Rectangle 1</legend>
                    <div class="form-group">
                        <label>Width</label>:
                        <input type="text" name="width_r1" value="0" required>
                    </div>
                    <div class="form-group">
                        <label>Height</label>:
                        <input type="text" name="height_r1" value="0" required>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Rectangle 2</legend>
                    <div class="form-group">
                        <label>Width</label>:
                        <input type="text" name="width_r2" value="0" required>
                    </div>
                    <div class="form-group">
                        <label>Height</label>:
                        <input type="text" name="height_r2" value="0" required>
                    </div>
                </fieldset>
                <div class="form-group">
                    <button type="submit">Calculate</button>
                </div>
            </form>
            <p></p>
        </div>
    </body>
</html>