<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>Edit Menu</title>
<link rel="icon" href="images/truyum-logo-dark.png" />
<link rel="stylesheet" href="styles/style.css" type="text/css" />

<script src="js\script.js">
    
</script>


</head>

<body>
    <c:set var="menuItem" value="${menuItem}"></c:set>
    <header>
    <h1>
        truYum &nbsp;<img src="images/truyum-logo-light.png" width=33 height=34 />
    </h1>
    </header>
    <nav> <a class="menu" href="ShowMenuItemListAdmin"> Menu </a> </nav>


    <form action="EditMenuItem" name="menuItemForm" method="post"
        onsubmit="return validateMenuItemForm()">

        <table id="table" cellspacing="5">

            <tr>
                <h1 id="h1">Edit Menu Item</h1>
            </tr>


            <input type="hidden" name="id" value="${menuItem.getId()}" />

            <tr height=10px;>
                <td class="name"><label for="name">Name<label></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <td colspan="4"><input type="text" id="name" name="name"
                    value="${menuItem.getName()}" size="90" autocomplete="off"
                    placeholder="sandwich"></td>

            </tr>

            <tr>
                <td><label for="price">Price (Rs.)<label></td>
                <td><label for="active">Active</label></td>
                <td><label for="dateofLaunch">Date of Launch</label></td>
                <td><label for="category">Category<label></td>
            </tr>
            <tr>
                <td><input type="text" id="price" name="price" value="${menuItem.getPrice()}"
                    autocomplete="off" placeholder="                                         97"></td>

                <td><c:choose>
                        <c:when test="${menuItem.isActive()==true}">
                            <input type="radio" id="active" name="active" checked>Yes <input
                                type="radio" name="active" id="active">No</td>
                </c:when>
                <c:otherwise>
                    <input type="radio" id="active" name="active">Yes <input type="radio"
                        name="active" id="active" checked>No</c:otherwise>
                </c:choose>
                </td>
                <td><fmt:formatDate value="${menuItem.getDateOfLaunch()}" pattern="dd/MM/yyyy"
                        var="dateOfLaunch" /><input type="text" id="dateofLaunch"
                    name="dateofLaunch" value="${dateOfLaunch}" placeholder="dd/mm/yyyy"></td>
                <td><select name="category">
                        <option value="${menuItem.getCategory()}">
                            ${menuItem.getCategory()}</option>
                        <option value="Main Course">Main Course</option>
                        <option value="Starters">Starters</option>
                        <option value="Dessert">Dessert</option>
                        <option value="Drinks">Drinks</option>
                </select></td>
            </tr>

            <tr>
                <td><input type="checkbox" id="freedelivery" name="freedelivery" checked><label
                    for="freedelivery">Free Delivery</label></td>
            </tr>
            <tr>
                <td colspan="2"><input id="save" type="submit" value="Save" class="submit"></td>
            </tr>
        </table>
    </form>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>