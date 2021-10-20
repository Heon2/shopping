package com.study.cart;

import lombok.Data;

@Data
public class CartDTO {
	private int cartno;
	private String id;
	private String pname;
	private int quantity;
}
