package com.study.cart;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class CartListDTO {  //cart, contents 조인하기위한 DTO
	private int cartno;
	private String pname;
	private String id;
	private int price;
	private int quantity;
	private String filename;
	private int contentsno;
}
