package com.cognizant.truyum.dao;

public class CartEmptyException extends Exception {

    private static final long serialVersionUID = 1;

    @Override
    public String toString() {
        return "Cart is Empty";
    }

}
