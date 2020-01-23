use truyum;


-- 1. view Menu item List Admin (TYUC001)
-- a.Inserting menu items 

insert into truyum.menu_item(me_name,me_price,me_active,me_date_of_launch,me_category,me_free_delivery) values('Sandwich',99.00,'Yes','2017-03-15','Main Course','Yes');
insert into truyum.menu_item(me_name,me_price,me_active,me_date_of_launch,me_category,me_free_delivery) values('Burger',120.00,'Yes','2017-12-23','Main Course','No');
insert into truyum.menu_item(me_name,me_price,me_active,me_date_of_launch,me_category,me_free_delivery) values('Pizza',149.00,'Yes','2018-08-21','Main Course','No');
insert into truyum.menu_item(me_name,me_price,me_active,me_date_of_launch,me_category,me_free_delivery) values('French Fries',57.00,'No','2017-07-02','Starters','Yes');
insert into truyum.menu_item(me_name,me_price,me_active,me_date_of_launch,me_category,me_free_delivery) values('Chocolate',32.00,'Yes','2022-11-02','Dessert','Yes');

-- b. Retrieving menu items (admin view)

SELECT 
    *
FROM
    truyum.menu_item;


-- 2. view Menu list Customer(TYUc002)
-- a.Retrieving menu Items (customed view)

SELECT 
    *
FROM
    truyum.menu_item
WHERE
    me_active = 'Yes'
        AND me_date_of_launch <= (SELECT CURDATE());

-- 3. Edit menu item (TYOC003)
-- a. Retrieving particular menu item for edit
 
SELECT 
    *
FROM
    truyum.menu_item
WHERE
    me_id = 1;

-- b.updating menu_item id=1

UPDATE truyum.menu_item 
SET 
    me_name = 'Cheesy Sandwich',
    me_price = 150.00,
    me_active = 'No',
    me_date_of_launch = '2018-03-15',
    me_category = 'Starters',
    me_free_delivery = 'No'
WHERE
    me_id = 1;

-- 4. Add to cart (TYUC004)
-- a. inserting user details and adding cart information in thier user id 

insert into truyum.user(us_name) values('Mani');
insert into truyum.user(us_name) values('Keerthi');

insert into truyum.cart(ct_us_id,ct_pr_id) values(1,1);
insert into truyum.cart(ct_us_id,ct_pr_id) values(1,1);
insert into truyum.cart(ct_us_id,ct_pr_id) values(1,3);


-- 5. view cart(tyuC005)
-- a. retrieving all the carts from the particular user id

SELECT 
    me.me_id,
    me.me_name,
    me.me_price,
    me.me_active,
    me.me_date_of_launch,
    me.me_category,
    me.me_free_delivery
FROM
    truyum.menu_item me
        JOIN
    truyum.cart ct ON me.me_id = ct.ct_pr_id
        JOIN
    truyum.user us ON us.us_id = ct.ct_us_id
WHERE
    us.us_id = 1;




-- b. Total amount 

SELECT 
    SUM(me.me_price) AS Total
FROM
    truyum.cart ct
        JOIN
    truyum.menu_item me ON ct.ct_pr_id = me.me_id
        JOIN
    truyum.user us ON us.us_id = ct.ct_us_id
WHERE
    us.us_id = 1;



-- 6.  Remove item from cart (TYUc006)
-- a. Removing item from the cart

DELETE FROM truyum.cart 
WHERE
    ct_us_id = 1 AND ct_pr_id = 1 LIMIT 1;





