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

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginUser(@Valid @RequestParam("email") String email, @RequestParam("password") String password,
			RedirectAttributes redirectAttributes, Model model, HttpSession session) {
		// if the user is authenticated, save their user id in session
		boolean isAuthenticated = userService.authenticateUser(email, password);
		if (isAuthenticated) {
			User u = userService.findByEmail(email);
			session.setAttribute("userId", u.getId());
			return "redirect:/productList";
		} else {
//	    		model.addAttribute("error","Invalid Credentials.Please try again."); 
			redirectAttributes.addFlashAttribute("error", "Invalid login");
			return "redirect:/registration";
		}
		// else, add error messages and return the login page
	}

	@PostMapping(value = "/addProduct")
	public String addProduct(@ModelAttribute("product") Product product) {
		System.out.println(product.getName());
//			use service to add product to db
		productService.save(product);
		return "redirect:/admin";
	}

//		
//		@RequestMapping("/edit/{id}")
//	    public String edit(@PathVariable("id") Long id, @ModelAttribute("editProductObject") Product editProduct, Model model){
//		Product product1=productService.findProduct(id);
//		model.addAttribute("products", product1);
//		return "admin.jsp";
//		}
//		
//	    @RequestMapping(value= "/editProduct/{id}", method=RequestMethod.POST)
//	    public String editProduct (@PathVariable("id") Long id, @Valid @ModelAttribute("editProductObject") Product product, BindingResult result) {
//	    	if (result.hasErrors()) {
//				System.out.println("bbb");
//				return "admin.jsp";
//			}
//			else {
////		    	Product product1=productService.findProduct(id);
//				productService.updateProduct(product);
//				return "redirect:/admin";
//			}
//	    }

	@RequestMapping("/products/{id}/delete")
	public String delete(@PathVariable("id") long id) {
		productService.deleteProduct(id);
		return "redirect:/admin";
	}

	@RequestMapping("/admin")
	public String admin(@ModelAttribute("product") Product product, Principal principal, Model model) {
		Iterable<Product> allProducts = productService.getAllProducts();
		model.addAttribute("products", allProducts);
		addUserToModel(principal, model);
		return "admin.jsp";
	}

	@RequestMapping(value = { "/productList" })
	public String home(Principal principal, Model model) {
		User u = addUserToModel(principal, model);
		Iterable<Product> products1 = productService.getAllProducts();
		model.addAttribute("products", products1);
		return "productList.jsp";
	}

	private User addUserToModel(Principal principal, Model model) {
		String email = principal.getName();
		User u = userService.findByEmail(email);
		model.addAttribute("currentUser", u);
		return u;
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

	@RequestMapping("/removeEvent/{id}")
	public String removeEvent(HttpSession session, @PathVariable("id") Long id) {
		eventService.deleteEvent(id);
		return "redirect:/newEvent";
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(@RequestParam("name") String name, Model model) {
		System.out.println("in search" + name);
		Product productByName = productService.findProductByName(name);
		if (productByName == null) {
			return "redirect:/productList";
		}
		System.out.println("in search111" + productByName.getId());
		// productByName.getId();
		model.addAttribute("product", productByName);
		return "redirect:/show/" + productByName.getId();
		// return "redirect:/show/{id}"; //or redirect /login
	}

	@RequestMapping("/events/new")
	public String newEvent(@ModelAttribute("event") Event Event) {
		return "form.jsp";
	}

	@RequestMapping(value = "/showCategoryProduct", method = RequestMethod.POST)
	public String ShowProductCategory(@RequestParam("category") String category, Model model) {
		Product productByName = productService.findProductByCategory(category);
		return "redirect:/show/" + productByName.getId();
	}

	@RequestMapping("/product/category")
	public String ShowCat(HttpSession session, @RequestParam("email") String email,
			@ModelAttribute("showProductCat") Product productcat, Model model) {
		Long userId = (Long) session.getAttribute("userId");
		User u = userService.findUserById(userId);
		model.addAttribute("user", u);
		return "showCategory.jsp";
	}

	@RequestMapping("/newEvent")
	public String newEvent(Principal principal, @ModelAttribute("event") Event event, Model model) {
		User u = addUserToModel(principal, model);
		List<Event> event2 = u.getEvents();
		model.addAttribute("allEvents", event2);
		model.addAttribute("products", productService.getAllProducts());
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
			event.setUser(u);
			event.setProduct(productService.findProduct(id));
			Event event1 = eventService.save(event);
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

//			System.out.println("in search"+ name);
//			Product productByName= productService.findProductByName(name); 
//			if(productByName==null) {
//				return "redirect:/productList"; 
//			}
//			
//			System.out.println("in search111"+ productByName.getId());
//			model.addAttribute("product",productByName);
//			return "redirect:/show/" + productByName.getId();
////			return "redirect:/show/{id}"; //or redirect /login
//		}

}
