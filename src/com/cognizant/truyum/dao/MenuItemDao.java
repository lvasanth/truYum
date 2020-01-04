package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

public interface MenuItemDao {
    public List<MenuItem> getMenuItemListAdmin(); // all items should be displayed

    public List<MenuItem> getMenuItemListCustomer(); // depends on DOL and status

    public void modifymenuItem(MenuItem menuitem); // update the menu items

    public MenuItem getMenuItem(long menuItemId);

}
