package com.study.cart;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.study.contents.ContentsDTO;

@Controller
public class CartController {

	@Autowired
	@Qualifier("com.study.cart.CartServiceImpl")
	private CartService service;

	@GetMapping("/cart/list")
	public String list(HttpSession session, Model model) {
		String id = (String) session.getAttribute("id");
		List<CartListDTO> list = service.list(id);
		CartListDTO dto = service.sum(id);
		// 뷰 페이지에 상품정보 목록 전달하기
		model.addAttribute("list", list);
		model.addAttribute("dto", dto);

		// 뷰페이지로 내부이동하기
		return "/cart/list";
	}

	@GetMapping("/cart/delete/{cartno}")
	public String delete(@PathVariable("cartno") int cartno) {
		int cnt = service.delete(cartno);
		if (cnt == 1) {
			return "redirect:/cart/list";
		} else {
			return "/myerror";
		}
	}

	@PostMapping("/cart/create")
	public String update(CartDTO dto) {
		int cnt = service.create(dto);

		if (cnt == 1) {
			return "redirect:/cart/list";
		} else {
			return "/myerror";
		}
	}
}
