package com.hsp.shoppingcart;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.hsp.orders.Orders;
import com.hsp.payment.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.RedirectView;

import com.hsp.payment.PaymentService;
import com.hsp.product.Product;
import com.hsp.product.ProductServiceImpl;
import com.hsp.user.User;

@RestController
@RequestMapping("/shoppingcart")
public class ShoppingCartController {
	@Autowired
	private HttpSession httpSession;

	@Autowired
	private ShoppingCartMapper shoppingCartMapper;
	
	@Autowired
	private PaymentServiceImpl paymentServiceImpl;
	
	// 장바구니 조회
	@GetMapping
	public ModelAndView viewShoppingCart(User user) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/hsp/main");
		try {
			paymentServiceImpl.routinePayment(new Orders(), 0);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

	/*
	 * // 장바구니 등록
	 * 
	 * @PostMapping
	 * 
	 * @ResponseBody public String registShoppingCart(Orders orders) { try {
	 * System.out.println(orders.getOrder_id());
	 * paymentServiceImpl.cancelPayment(orders.getOrder_id()); } catch (Exception e)
	 * { // TODO Auto-generated catch block e.printStackTrace(); } return "ddddd"; }
	 */
	
	// 장바구니 등록
		@PostMapping
		@ResponseBody
		public String registShoppingCart(Orders orders) {
			try {
				System.out.println(orders.getOrder_id());
				paymentServiceImpl.cancelPayment(orders.getOrder_id());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "ddddd";
		}

	// 장바구니 수정
	@PutMapping
	public ModelAndView updateShoppingCart() {
		ModelAndView mv = new ModelAndView(new RedirectView("/hsp/main"));

		return mv;
	}

	// 장바구니 삭제
	@DeleteMapping
	public void deleteShoppingCart(ShoppingCart shoppingCart) {

	}
}
