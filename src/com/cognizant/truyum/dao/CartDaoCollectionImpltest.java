package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

public class CartDaoCollectionImpltest {
    static CartDao cartDao = new CartDaoCollectionImpl();

    public static void main(String[] args) {
        testAddcartitem();
        testgetAllCartitems();
        testRemovecartitems();
        testgetAllCartitems();
    }

    public static void testAddcartitem() {
        System.out.println("Product added in the Cart ");
        cartDao.addCartItem(1, 2); // 1 is useId and 2 is menuItemId
        cartDao.addCartItem(1, 3); // 1 is useId and 3 is menuItemId
    }

    public static void testgetAllCartitems() {
        try {
            System.out.println("Retrieving all item from Cart");
            List<MenuItem> list = cartDao.getAllCartItems(2).getMenuItemList(); // 1 is userId
            for (MenuItem menuItem : list) {
                System.out.println(menuItem);
            }
            System.out.println("Total Price " + cartDao.getAllCartItems(2).getTotal());
        } catch (CartEmptyException e) {
            System.out.println(e);
        }
    }

    public static void testRemovecartitems() {
        System.out.println("Remove Cart ");
        cartDao.RemoveCartItem(1, 2);
    }
}
