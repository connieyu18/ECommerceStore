package com.connie.EcommerceStore.controllers;

import java.security.Principal;
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
import com.connie.EcommerceStore.models.User;
import com.connie.EcommerceStore.services.UserService;
import com.connie.EcommerceStore.validator.UserValidator;

@Controller
public class UsersController {
	private UserService userService;
	private UserValidator userValidator;
	

	public UsersController(UserService userService, UserValidator userValidator) {
		this.userService = userService;
		this.userValidator = userValidator;
	}
	@RequestMapping("/home")
	public String home() {
		return "home.jsp";
	}
	@RequestMapping("/")
	public String mainPage() {
		return "redirect:/home";
	}
	@RequestMapping(value = {"/productList"})
    public String home(Principal principal, Model model) {
		System.out.println("home");
		if (principal == null) 
			return "redirect:/home";
		String email = principal.getName();
        model.addAttribute("currentUser", userService.findByEmail(email));
        return "productList.jsp";
    }
	
	@RequestMapping("/registration")
	public String registerForm(@Valid @ModelAttribute("user") User user, BindingResult result, Model model,
			Principal principal) {
		if (principal != null) {
			return "redirect:/productList";
		}
		return setUpRegistrationLoginPage(user, result, model);
	}

	@PostMapping("/registration")
	public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model) {
		System.out.println("registration" + user);
		userValidator.validate(user, result);
		if (result.hasErrors()) {
			System.out.println("result.hasErrors()");
			return setUpRegistrationLoginPage(user, result, model);
		} else if (userService.findByEmail(user.getEmail()) != null) {
			return "redirect:/passingMessage/emailError";
		}
		System.out.println("pass result has error");
		userService.registerUser(user);
		return "redirect:/passingMessage/signup";
	}
	
	private String setUpRegistrationLoginPage(@Valid @ModelAttribute("user") User user, BindingResult result, Model model) {
		return "login.jsp";
	}

//	private void saveAdminUserRole(User user) {
//		System.out.println("userRoleService.countAdmin(): " + userRoleService.countAdmin());
//		if (userRoleService.countAdmin() > 0) {
//			userService.saveWithUserRole(user);
//		} else
//			userService.saveWithAdminRole(user);
//	}
	

	@RequestMapping("/passingMessage/{errorType}")
	public String flashEmailErrors(@PathVariable(value = "errorType") String errorLabel,
			RedirectAttributes redirectAttributes) {
		System.out.println("/passingMessage/{errorType}" + errorLabel);
		switch (errorLabel) {
		case "emailError":
			redirectAttributes.addFlashAttribute("emailError", "The email you entered is already used");
			break;
		case "logout":
			redirectAttributes.addFlashAttribute("logoutMessage", "Logout Successful!");
			break;
		case "loginError":
			System.out.println("Invalid Credentials, Please try again.");
			redirectAttributes.addFlashAttribute("loginError", "Invalid Credentials, Please try again.");
			break;
		case "signup":
			redirectAttributes.addFlashAttribute("signup", "Sucessfully signup, you can sign in now");
			break;
		}
		return "redirect:/registration";
	}

	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		System.out.println("in here error "+error);
		if (error != null) {
			System.out.println("error "+error);
			System.out.println(" loginError Invalid Credentials, Please try again.");
			return "redirect:/passingMessage/loginError";
		} else if (logout != null) {
			return "redirect:/passingMessage/logout";
		}
		System.out.println("productList "+error);
		return "redirect:/registration";
	}
	
	


//	@RequestMapping(value = { "/events" })
//	public String home(Principal principal, Model model, @Valid @ModelAttribute("event") Event event) {
//		String email = principal.getName();
//		User user = userService.findByEmail(email);
//		model.addAttribute("currentUser", user);
//		event.setHost(user);
//		return "homePage.jsp";
//	}

//	@PostMapping(value = "/host/dashboard")
//	public String creat(Principal principal, Model model, @Valid @ModelAttribute("event") Event event, BindingResult result) {
//		System.out.println("\n*****************UsersController - create()*****************");
//		if (result.hasErrors()) {
//			System.out.println("result.hasErrors");
//			return "home.jsp"; //FIXME: redirect can't show error message
//		} else {
//			eventService.createEvent(event);
//			System.out.printf("createdquestion: %s", question.toString());
//			return "redirect:/questions";
//		}
//		return "home.jsp";
//	}

//	@RequestMapping(value = "/questions/new", method = RequestMethod.POST)
//	public String create(@Valid @ModelAttribute("question") Question question, BindingResult result, @RequestParam("tagStr") String tagStr) {
//		System.out.println("\n*****************QuestionsController - create()*****************");
//		System.out.printf("Start to create a question: %s", question);
//		System.out.printf("Start to create a tag: %s", tagStr);
//		if (result.hasErrors()) {
//			System.out.println("result.hasErrors");
//			return "questions/new.jsp"; //FIXME: redirect can't show error message
//		} else {
//			List<Tag> tags = tagService.createTags(tagStr);
//			questionService.addTagsAndCreateQuestion(question, tags);
//			System.out.printf("createdquestion: %s", question.toString());
//			return "redirect:/questions";
//		}
//	}

//	 
    @RequestMapping("/admin")
    public String adminPage(Principal principal, Model model) {
        String email = principal.getName();
        
        model.addAttribute("currentUser", userService.findByEmail(email));
        return "adminPage.jsp";
    }
//    
//    @RequestMapping("/test")
//    public String test(Model model) {
//    	List<User> users = userService.findAdmins();
//        model.addAttribute("users", users);
//        return "testing.jsp";
//    }
}
