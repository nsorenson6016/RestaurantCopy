<%-- 
    Document   : index
    Created on : Feb 4, 2013, 4:46:29 PM
    Author     : Neal
--%>

<%@page import="java.util.List"%>
<%@page import="model.MenuData"%>
<%@page import="model.MenuItem"%>
<%@page import="java.text.NumberFormat"%>
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
            <!-- Populate check box list with the MenuData list -->
            <%
                MenuData md = new MenuData();
                List<MenuItem> menuList = (List<MenuItem>) md.getItems();
                NumberFormat nf = NumberFormat.getCurrencyInstance();
                for (MenuItem menuItem : menuList) {
                    String item = menuItem.getItemName();
                    double itemPrice = menuItem.getItemPrice();
                    String value = menuItem.getValue();
            %>

            <!-- Remember, using the %= notation below is a shortcut for out.print -->
            <input type="checkbox" name="menuItems" value="<%= value%>" /> <%= (item + ", " + nf.format(itemPrice))%><br/>

            <%
                }

            %>

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
