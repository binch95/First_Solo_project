package com.example.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import java.util.List;

@Controller
public class UsrHomeController {

	@RequestMapping("/usr/home/main")
	public String showMain(Model model) {
        List<String> products = List.of("product1.jpg", "product2.jpg", "product3.jpg", "product4.jpg", "product5.jpg", "product6.jpg");
        
        model.addAttribute("products", products);
		return "/usr/home/main";
	}

	@RequestMapping("/")
	public String showRoot() {

		return "redirect:/usr/home/main";
	}

}
