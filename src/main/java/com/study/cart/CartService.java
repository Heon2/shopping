package com.study.cart;

import java.util.List;
import java.util.Map;

public interface CartService {

	List<CartListDTO> list(String id);

	CartListDTO sum(String id);

	int delete(int cartno);

	int create(CartDTO dto);
}
