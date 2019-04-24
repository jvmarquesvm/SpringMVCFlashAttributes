package com.padrao.spring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.padrao.spring.entity.Product;

@Controller
@RequestMapping(value = "product")
public class ProductController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("product", new Product());
		return "product/index";
	}
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String save(@ModelAttribute("product") Product product,
			           @RequestParam("age") int age,
			           @RequestParam("username") String username,
			           RedirectAttributes redirectAttributes) {
		
		redirectAttributes.addFlashAttribute("age", age);
		redirectAttributes.addFlashAttribute("username", username);
		redirectAttributes.addFlashAttribute("product", product);
		
		return "redirect:./showFlashAttributes";
	}
	
	@RequestMapping(value = "showFlashAttributes", method = RequestMethod.GET)
	public String showFlashattributes(RedirectAttributes redirectAttributes) {
		return "product/result";
	}
	
}
