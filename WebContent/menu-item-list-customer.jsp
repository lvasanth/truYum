<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Customer</title>
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


    <table class="table" cellspacing="15">
        <tr>
            <h1 id="h1">Menu Items</h1>
        </tr>
        <tr>

            <td colspan="5" align="center" id="edit-status"><c:if test="${addCartStatus==true}">
                   Item added to cart Successfully</td>
            </c:if>
            </td>

        </tr>


        <tr>
            <th class="name">Name</th>
            <th class="delivery">Free Delivery</th>
            <th class="price">Price</th>
            <th class="category">Category</th>
            <th class="action">Action</th>
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

                <td class="action"><a href="AddToCart?menuItemId=${menuItem.getId()}">Add
                        To Cart</a></td>
            </tr>
        </c:forEach>


    </table>
    <footer> Copyright &copy; 2019 </footer>
</body>

</html>