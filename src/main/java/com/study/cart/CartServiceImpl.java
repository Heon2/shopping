package com.study.cart;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("com.study.cart.CartServiceImpl")
public class CartServiceImpl implements CartService{

	@Autowired
	private CartMapper mapper;

	@Override
	public List<CartListDTO> list(String id) {
		// TODO Auto-generated method stub
		return mapper.list(id);
	}

	@Override
	public CartListDTO sum(String id) {
		// TODO Auto-generated method stub
		return mapper.sum(id);
	}

	@Override
	public int delete(int cartno) {
		// TODO Auto-generated method stub
		return mapper.delete(cartno);
	}

	@Override
	public int create(CartDTO dto) {
		// TODO Auto-generated method stub
		return mapper.create(dto);
	}
}
