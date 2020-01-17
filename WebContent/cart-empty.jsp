<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<title>Cart Empty</title>
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


    <table class="table" cellspacing="20">


        <tr>
            <h1 id="h1">Cart</h1>

        </tr>

        <td id="empty">No items in cart.Use 'Add to Cart' option in <a id="menuitemlist"
            href="ShowMenuItemListCustomer "> Menu Item list.</a>
        </td>
    </table>


    <footer> Copyright &copy; 2019 </footer>
</body>
</html>