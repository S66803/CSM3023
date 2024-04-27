<%-- 
    Document   : insuranceQuotation
    Created on : 26 Apr 2024, 9:11:23 pm
    Author     : MUHAMMAD IMRAN BIN ABD HAMID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Insurance Quotation - JSP</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Insurance Quotation</h1>
        <div>
            <fieldset>
                <legend>Insurance Calculation</legend>
                <form action="processInsuranceQuo.jsp" method="POST">
                    <div>
                        <label>IC No</label>:
                        <input type="text" name="icno" placeholder="E.g. 821210-05-3478" required>
                    </div>
                    <div>
                        <label>Name</label>:
                        <input type="text" name="name" placeholder="enter name" required>
                    </div>
                    <div>
                        <label>Market price</label>:
                        <input type="number" name="price" placeholder="price" required>
                    </div>
                    <div>
                        <label>Coverage type</label>:
                        <select name="coverageType">
                            <option value="1">Third Party</option>
                            <option value="2">Comprehensive</option>
                        </select>
                    </div>
                    <div>
                        <label>No claims discount (NCD)</label>:
                        <select name="discount">
                            <option value="1">10%</option>
                            <option value="2">25%</option>
                            <option value="3">35%</option>
                            <option value="4">55%</option>
                        </select>
                    </div>
                    <div>
                        <button type="submit">Submit</button>
                        <button type="reset">Cancel</button>
                    </div>
                </form>
            </fieldset>
        </div>
        <footer>&copy; 2024-Muhd Imran</footer>
    </body>
</html>
