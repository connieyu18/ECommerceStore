package com.connie.EcommerceStore.controllers;

import java.security.Principal;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.connie.EcommerceStore.models.Event;
import com.connie.EcommerceStore.models.Product;
import com.connie.EcommerceStore.models.User;
import com.connie.EcommerceStore.services.ClientOrderService;
import com.connie.EcommerceStore.services.EventService;
import com.connie.EcommerceStore.services.OrderProductService;
import com.connie.EcommerceStore.services.ProductService;
import com.connie.EcommerceStore.services.UserService;
import com.connie.EcommerceStore.validator.UserValidator;

@Controller
@RequestMapping("/admin")
public class AdminsController {
	private final ProductService productService;
	private final EventService eventService;
	private final UserService userService;
	private final UsersController usersConstroller;

	public AdminsController(UsersController usersConstroller, ProductService productService, EventService eventService,
			UserService userService) {
		this.productService = productService;
		this.eventService = eventService;
		this.userService = userService;
		this.usersConstroller = usersConstroller;
	}

	@RequestMapping("/passingMessage/{errorType}")
	public String flashProductErrors(@PathVariable(value = "errorType") String errorLabel,
			RedirectAttributes redirectAttributes) {
		System.out.println("/passingMessage/{errorType}" + errorLabel);
		switch (errorLabel) {
			case "successfulAdd":
				redirectAttributes.addFlashAttribute("successfulAdd", "Products is successfully created!!!");
				break;
			}
		return "redirect:/admin";
	}

	@RequestMapping("")
	public String admin(@ModelAttribute("product") Product product, BindingResult result, Principal principal, Model model) {
		return setUpAdminPage(product, result, principal, model);
	}
	
	private String setUpAdminPage(@Valid @ModelAttribute("product") Product product, BindingResult result,Principal principal, Model model) {
		Iterable<Product> allProducts = productService.getAllProducts();
		model.addAttribute("products", allProducts);
		usersConstroller.addUserToModel(principal, model);
		return "admin.jsp";
		}
		
//	private String setUpAdminPage(@Valid @ModelAttribute("product") Product product, BindingResult result, Model model) {
//		model.addAttribute("states", UserService.STATES_ARR);
//		return "registrationPage.jsp";
//	}

	@PostMapping(value = "/{id}/products/add")
	public String addProduct( @PathVariable Long id,@Valid @ModelAttribute("product") Product product, BindingResult result, Principal principal, Model model) {
		System.out.println(product.getName());
		if (result.hasErrors()) {
			System.out.println("result.hasErrors()");
			return setUpAdminPage(product, result, principal, model);
		}
		productService.addProduct(product);
		return "redirect:/admin/passingMessage/successfulAdd";
	}
}
