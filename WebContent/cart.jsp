<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Cart</title>
<link rel="icon" href="images/truyum-logo-dark.png" />
<link rel="stylesheet" href="styles\style.css" type="text/css" />

</head>
<body>
    <header>
    <h1>
        truYum &nbsp;<img src="images/truyum-logo-light.png" width=33 height=34 />
    </h1>
    </header>
    <nav> <a class="menu" href="ShowMenuItemListCustomer"> Menu </a> <a class="cart"
        href="ShowCart">Cart</a> </nav>

    <c:if test="${removecartItemStatus==true}">
                   Items Removed saved successfully</td>
    </c:if>



    <table class="table" cellspacing="5" cellpadding="8">



        <tr>
            <h1 id="h1">Cart</h1>

        </tr>

        <c:set value="${cart}" var="cart"></c:set>
        <tr>
        <tr>


            <td colspan="5" align="center" id="edit-status"><c:if
                    test="${removecartItemStatus==true}">
                    Item removed from Cart successfully</td>
            </c:if>
            </td>

        </tr>
        <tr>
            <th class="name">Name</th>
            <th align="left">Free Delivery</th>
            <th class="price">Price</th>
        </tr>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td class="name">${menuItem.getName()}</td>

                <td class="delivery"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
                        <c:otherwise> NO </c:otherwise>
                    </c:choose></td>
                <td class="price">${menuItem.getPrice()}</td>


                <td class="category">${menuItem.getCategory()}</td>

                <td class="action"><a href="RemoveCart?menuItemId=${menuItem.getId()}">Delete</a></td>
            </tr>
        </c:forEach>
        <tr>
            <th></th>
            <th align="left">Total</th>
            <th>Rs.${cart.getTotal()}</th>
        </tr>
    </table>


    <footer> Copyright &copy; 2019 </footer>
</body>

</html>