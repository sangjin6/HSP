package com.hsp.product;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/product")
public class ProductController {

	@GetMapping("/regit")
	public ModelAndView main() {
		ModelAndView modelAndView = null;
		return modelAndView;
	}
}