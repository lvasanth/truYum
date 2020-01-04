package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

public class MenuItemDaoCollectionImplTest {
    static MenuItemDao menudao = new MenuItemDaoCollectionImpl();

    public static void main(String[] args) {
        testGetmenuItemListAdmin();
        testGetMenuItemListCustomer();
        testModifyMenuItem();
        testGetMenuItem();
        testGetmenuItemListAdmin();
    }

    public static void testGetmenuItemListAdmin() {
        MenuItemDao menudao = new MenuItemDaoCollectionImpl();
        List<MenuItem> menu = menudao.getMenuItemListAdmin();
        System.out.printf("%-10s%-22s%-10s%-10s%-15s%-16s%s\n", "Id", "Name", "Price", "Active",
                "dateOfLaunch", "Category", "Free Delivery");
        for (MenuItem menuItem2 : menu) {
            System.out.println(menuItem2);
        }
    }

    public static void testGetMenuItemListCustomer() {
        System.out.println("Customer view");
        List<MenuItem> menu = menudao.getMenuItemListCustomer();
        System.out.printf("%-10s%-22s%-10s%-10s%-15s%-16s%s\n", "Id", "Name", "Price", "Active",
                "dateOfLaunch", "Category", "Free Delivery");
        for (MenuItem menuItem2 : menu) {
            System.out.println(menuItem2);
        }
    }

    public static void testModifyMenuItem() {
        System.out.println("modify menu");
        MenuItem menuitem = new MenuItem(1, "Eat and Enjoy", 12345.0f, true,
                DateUtil.convertToDate("02/01/2020"), "Main Dish", false);
        menudao.modifymenuItem(menuitem);
    }

    public static void testGetMenuItem() {
        System.out.println("Get Menu Item");
        System.out.printf("%-10s%-22s%-10s%-10s%-15s%-16s%s\n", "Id", "Name", "Price", "Active",
                "dateOfLaunch", "Category", "Free Delivery");
        MenuItem menuitem = menudao.getMenuItem(3);
        System.out.println(menuitem); // invokes String()
    }
}