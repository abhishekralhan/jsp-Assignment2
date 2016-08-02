package com.bitwise.assignment2;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddItems {
	// This is a bean class...

	private String cart;
	private int quantity;
	Map<String, Integer> cartItems = new HashMap<String, Integer>();

	public String getCart() {
		return cart;
	}

	public void setCart(String cart) {
		this.cart = cart;

	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public void setCartItems(HttpServletRequest request, HttpServletResponse response) {
		cartItems.put(cart, quantity);
	}

	public Map<String, Integer> getCartItems() {
		return cartItems;
	}
	public void removeItem(String key){
		cartItems.remove(key);
	}

	public void setSessionCart(HttpServletRequest request) {
		request.getSession(false).setAttribute("cart", cartItems);

	}

}
