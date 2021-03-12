package com.ust.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ust.entity.Book;
import com.ust.entity.Order;
import com.ust.entity.User;
import com.ust.service.Service;

@Controller
@RequestMapping("/application")
public class MyController {
	
	@Autowired
	Service service;
	HttpRequest request;
	
	//to print add user form
	@GetMapping("/addUser")
	public String addUser(Model theModel)
	{
		User theUser = new User();
		theModel.addAttribute("user", theUser);
		return "addUser";	
	}
	//login mapping
	@GetMapping("/login")
	public String login(Model theModel)
	{
		User theUser = new User();
		theModel.addAttribute("user", theUser);
		return "login";	
	}
	
	//forgetPassword mapping
		@GetMapping("/forgetPass")
		public String forget(Model theModel)
		{
			User theUser = new User();
			theModel.addAttribute("user", theUser);
			return "forgetPassword";	
		}
	
	//to print add book form
	@GetMapping("/addBook")
	public String addBook(Model theModel)
	{
		Book theBook = new Book();
		theModel.addAttribute("book", theBook);
		return "addBook";	
	}
	
	// to add user to database
	@PostMapping("/saveUser")
	public String saveUser(@ModelAttribute("user") User theUser)
	{
		//save the customer 
		service.saveUser(theUser);
		return "index";
	}
	
	//to add book to database
	@PostMapping("/saveBook")
	public String saveBook(@ModelAttribute("book") Book theBook)
	{
		//save the customer 
		service.saveBook(theBook);
		return "index";
	}
	
	// show list of books
		@RequestMapping(path="/list",method=RequestMethod.GET)
		public String listBooks(Model theModel)
		{
			List<Book> books = service.getBooks();
			theModel.addAttribute("books", books);
			return "welcomePage";
		}
		
		//show particular book to buy
		@GetMapping("/purchase")
		public String openSpecificBook(@RequestParam("bookId") int theId,Model theModel)
		{
			Book book = service.getBook(theId);
			theModel.addAttribute("book",book);
			return "purchase";
		}
		
		@GetMapping("/confirmOrder")
		public String purchase(@RequestParam("bookId") int theId,Model theModel)
		{
			
			Book book = service.getBook(theId);
			theModel.addAttribute("book",book);
			return "confirmOrder";
		}
		
		//login
		@RequestMapping(value= "/loginUser", method= RequestMethod.POST)
	    public String doLogin(@Validated @ModelAttribute("user") User theUser,Model theModel,@RequestParam("mobileNumber") long name) {
			//theModel.addAttribute("users", userService.getUser(theUser));
			theModel.addAttribute("mobileNumber",name);
			User theuser = service.login(theUser);
			
			if (theuser != null) {
			return	"redirect:/application/list";
					
			} else {
				theModel.addAttribute("error","Incorrect Password");
				return "redirect:/application/login";
			}
	        
	    }
		
		//forget password
		@GetMapping("/forgetPassword")
		public String forgetPassword(@RequestParam("mobileNumber") long theId,Model theModel)
		{
			User theUser = service.getUser(theId);
			theModel.addAttribute("user",theUser);
			theModel.addAttribute("id",theId);
			return "confirmPassword";
		}

}
