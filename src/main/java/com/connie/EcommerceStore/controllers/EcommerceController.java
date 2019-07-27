package com.connie.EcommerceStore.controllers;

import java.security.Principal;
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
import com.connie.EcommerceStore.services.EventService;
import com.connie.EcommerceStore.services.ProductService;
import com.connie.EcommerceStore.services.UserService;
import com.connie.EcommerceStore.validator.UserValidator;

@Controller
public class EcommerceController {
	private final ProductService productService;
	private final EventService eventService;
	private final UserValidator userValidator;
	private final UserService userService;

	public EcommerceController(ProductService productService, EventService eventService, UserValidator userValidator,
			UserService userService) {
		this.productService = productService;
		this.eventService = eventService;
		this.userService = userService;
		this.userValidator = userValidator;
	}

	@RequestMapping("/cart/{id}")
	public String Cart(HttpSession session, @PathVariable Long id, Model model) {
		System.out.println("in checkout");
		Product product2 = productService.findProduct(id);
		System.out.println(product2);
		model.addAttribute("productsInCart", product2);
		Long userId = (Long) session.getAttribute("userId");
		User u = userService.findUserById(userId);
		if (session.getAttribute("cart") == null) {
			HashMap<Product, Integer> cart = new HashMap<Product, Integer>();
			cart.put(product2, 1);
			session.setAttribute("cart", cart);
		} else {
			HashMap<Product, Integer> cart = (HashMap<Product, Integer>) session.getAttribute("cart");
//					int index = this.exists(id, cart);
//					if (index == -1) {
			Product p = productService.findProduct(id);
			System.out.print("******p**********\n" + p);
			if (!cart.containsKey(p)) {
				cart.put(p, 1);
			} else {
				int count = cart.get(p);
				cart.put(p, ++count);

			}
			session.setAttribute("cart", cart);
		}
		return "redirect:/cart";
	}

	@RequestMapping("/cart/remove/{id}")
	public String removeItemInCart(HttpSession session, @PathVariable Long id, Model model) {
		System.out.println("in checkout");
		Product product2 = productService.findProduct(id);
		System.out.println(product2);
		model.addAttribute("productsInCart", product2);
		Long userId = (Long) session.getAttribute("userId");
		User u = userService.findUserById(userId);
		if (session.getAttribute("cart") == null) {
			HashMap<Product, Integer> cart = new HashMap<Product, Integer>();
			cart.put(product2, 1);
			session.setAttribute("cart", cart);
		} else {
			HashMap<Product, Integer> cart = (HashMap<Product, Integer>) session.getAttribute("cart");
//					int index = this.exists(id, cart);
//					if (index == -1) {
			Product p = productService.findProduct(id);
			System.out.print("******p**********\n" + p);
			if (cart.containsKey(p)) {
				int count = cart.get(p);
				if (count >= 1) {
					cart.put(p, --count);
				}
//					} else {
//						int quantity = cart.get(index).getQuantity() + 1;
//						cart.get(index).setQuantity(quantity);
//					}
			}
			session.setAttribute("cart", cart);
		}
		return "redirect:/cart";
	}

	@RequestMapping("/remove/{id}")
	public String remove(HttpSession session, @PathVariable("id") Long id) {
//			ProductModel productModel = new ProductModel();
		HashMap<Product, Integer> cart = (HashMap<Product, Integer>) session.getAttribute("cart");

//			List<Product> cart = (List<Product>) session.getAttribute("cart");
//			int index = this.exists(id, cart);
		Product prod = productService.findProduct(id);
		System.out.println("babab" + productService.findProduct(id));
//			if (cart.getId()==prod.getId() ) {
//				cart.remove(i);
//			}
//			for(int i=0; i<cart.size();i++) {
//				if (cart.get(i).getId()==prod.getId() ) {
//					cart.remove(i);
////					break;
//				}
//			}
		cart.remove(productService.findProduct(id));
		session.setAttribute("cart", cart);
		return "redirect:/cart";
	}

	@RequestMapping("/removeEvent/{id}")
	public String removeEvent(HttpSession session, @PathVariable("id") Long id) {
//			
//			Event event= eventService.findEvent(id);
//			System.out.println("babab"+ productService.findProduct(id));
//			if (cart.getId()==prod.getId() ) {
//				cart.remove(i);
//			}
//			for(int i=0; i<cart.size();i++) {
//				if (cart.get(i).getId()==prod.getId() ) {
//					cart.remove(i);
////					break;
//				}
//			}
//			event.remove(eventService.findEvent(id));
//			event.setAttribute("cart", event);
		eventService.deleteEvent(id);
		return "redirect:/newEvent";
	}

//    	
//    	List<Product> usersProducts= u.getProducts(); 
//    	usersProducts.add(product2); 
//    	u.setProducts(usersProducts);
//    	System.out.println(usersProducts);
////    	model.addAttribute("products", usersProducts);
////    	return "cart.jsp";
//    	return "redirect:/cart";
//		}
//		
	@RequestMapping("/admin/products/new")
	public String displayAddProductPage(@Valid @ModelAttribute("user") User user, Principal principal, Model model) {
		addUserToModel(principal, model);
		return "addProducts.jsp";
	}

//	@PostMapping("/admin/products/new")
//	public String addProduct(@Valid @ModelAttribute("user") User user, BindingResult result, Principal principal, Model model) {
//		
//		
//		return "";
//	}

	@RequestMapping("/cart")
	public String Cart(Principal principal, Model model) {
		User u = addUserToModel(principal, model);
		System.out.println("bbb" + u.getProducts());
		return "cart.jsp";
	}

	@RequestMapping("/show/{id}")
	public String ShowProduct(@PathVariable Long id, @ModelAttribute("searchProduct") String name, Principal principal,
			Model model) {
		User u = addUserToModel(principal, model);
		Product product2 = productService.findProduct(id);
		model.addAttribute("product", product2);
		return "show.jsp";
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(@RequestParam("name") String name, Model model) {
//			if (!name.exist) {
//				return "redirect:/product/category";
//
//			}
		System.out.println("in search" + name);
		Product productByName = productService.findProductByName(name);
		if (productByName == null) {
			return "redirect:/productList";
		}
		System.out.println("in search111" + productByName.getId());
//			productByName.getId(); 
		model.addAttribute("product", productByName);
		return "redirect:/show/" + productByName.getId();
//			return "redirect:/show/{id}"; //or redirect /login
	}

	private User addUserToModel(Principal principal, Model model) {
		String email = principal.getName();
		User u = userService.findByEmail(email);
		model.addAttribute("currentUser", u);
		return u;
	}

	@RequestMapping("/events/new")
	public String newEvent(@ModelAttribute("event") Event Event) {
		return "form.jsp";
	}

	@RequestMapping(value = "/addEvent", method = RequestMethod.POST)
	public String addEvent(HttpSession session, @Valid @ModelAttribute("event") Event event,
			@RequestParam("products") Long id, BindingResult result, Model model) {
		if (result.hasErrors()) {
			System.out.println("ddd");
			return "form.jsp";
		} else {
			Long userId = (Long) session.getAttribute("userId");
			User u = userService.findUserById(userId);
			List<Event> event2 = u.getEvents();
//					ArrayList<Event> alList= new ArrayList<Event> () ;
			event.setUser(u);
			// event2.add(event);
			// u.setEvents(event2);
			event.setProduct(productService.findProduct(id));
			Event event1 = eventService.save(event);
//					System.out.println("aaaa" + question.getTags()); 
			return "redirect:/newEvent";
		}
	}

//		@RequestMapping("/checkout/{id}")
//		public String Checkout(HttpSession session, Model model) {
//			System.out.println("in checkout");
//	    	Long userId=(Long)session.getAttribute("userId"); 
//	    	User u=userService.findUserById(userId); 
//	    	model.addAttribute("user", u); 
////	    	List<Product> usersProducts= u.getProducts(); 
////	    	model.addAttribute("products", usersProducts);
//	    	System.out.println("bbb" + u.getProducts() );
//		return "cart.jsp";
//		}

//	@RequestMapping(value = "/showCategoryProduct", method = RequestMethod.POST)
//	public String ShowProductCategory(@RequestParam("category") String category, Model model) {
////			System.out.println("in productcat"+ product.getCategory());
//		Product productByName = productService.findProductByCategory(category);
//		return "redirect:/show/" + productByName.getId();
//	}

//	@RequestMapping("/product/category")
//	public String ShowCat(HttpSession session, @RequestParam("email") String email,
//			@ModelAttribute("showProductCat") Product productcat, Model model) {
//		
//		User u = addUserToModel(session, model);
//		return "showCategory.jsp";
//	}

//	@RequestMapping("/newEvent")
//	public String newEvent(HttpSession session, @ModelAttribute("event") Event event, Model model) {
//		User u = addUserToModel(session, model);
//		List<Event> event2 = u.getEvents();
//
//		model.addAttribute("allEvents", event2);
//
//		model.addAttribute("products", productService.getAllProducts());
//		return "form.jsp";
//	}
//	@PostMapping("addProducts")
//	public String create(@Valid @ModelAttribute("event") Event event,BindingResult result, Principal principal, 
//			Model model) {
//		System.out.println("create");
//		if (result.hasErrors()) {
//			System.out.println("result.hasErrors()");
//			return setUpHomePage(model, principal, event, result);
//		}else
//			eventService.createEvent(event, getCurrentUser(principal));
////		userService.saveUserWithAdminRole(user);
//		return "redirect:/events/passingMessage/successfulCreate";
//	}

}
