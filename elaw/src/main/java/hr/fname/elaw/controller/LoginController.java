package hr.fname.elaw.controller;

import javax.servlet.http.HttpSession;

import hr.fname.elaw.model.Login;
import hr.fname.elaw.service.UserService;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author DELL
 *
 */
/**
 * @author DELL
 *
 */
@Controller
public class LoginController {

	protected static Logger logger = Logger.getLogger("controller");

	@Autowired
	private UserService userService;

	/*
	 * @RequestMapping(value="/login",method = RequestMethod.GET)
	 * 
	 * @ModelAttribute("loginNew") public String login(Model model) {
	 * logger.debug("Received request to show all persons");
	 * model.addAttribute("loginNew", new Login());
	 * 
	 * return "login"; }
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout,
			@ModelAttribute("loginNew") Login login) {
		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}
		System.out.println(login.getUsername());
		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");

		return model;

	}
	
	/*
	 * @RequestMapping(value="/login",method = RequestMethod.POST) public
	 * ModelAndView submitForm(@ModelAttribute("loginNew") Login login,Model
	 * model) {
	 * 
	 * 
	 * ModelAndView modelAndView = new ModelAndView(); User korisnik= null;
	 * 
	 * korisnik=userService.loginUser(login);
	 * model.addAttribute("korisnik",korisnik);
	 * modelAndView.setViewName("forma");
	 * 
	 * return modelAndView; }
	 */

}
