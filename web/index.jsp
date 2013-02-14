<%-- 
    Document   : index
    Created on : Feb 4, 2013, 4:46:29 PM
    Author     : Neal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome to Mouthful Eatery!</h1>
        <h2>Please make your order by checking the boxes below</h2>

        <form id="orderList" name="orderList" method="POST" action="OrderServlet">
            <!-- Remember, using the %= notation below is a shortcut for out.print -->
            <input type="checkbox" id="menuItems" name="menuItems" value="New York Strip/23.95" /> New York Strip, $23.95<br/>
            <input type="checkbox" id="menuItems" name="menuItems" value="Greek Salad/8.95" /> Greek Salad, $8.95<br/>
            <input type="checkbox" id="menuItems" name="menuItems" value="Coca-Cola/1.95" /> Coca-Cola, $1.95<br/>

            <!-- Button to place the order -->
            <br/>
            <input type="submit" value="Place Order" name="Submit Order">

        </form>
        <p>


        <%
            Object orderedObject = request.getAttribute("orderedItems");
            String answer = "";
            if (orderedObject != null) {
                answer = orderedObject.toString();
            }
            out.print(answer);

        %>
    </p>
    </body>
</html>
