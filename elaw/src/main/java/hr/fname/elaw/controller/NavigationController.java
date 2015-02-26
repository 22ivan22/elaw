package hr.fname.elaw.controller;

import hr.fname.elaw.form.LocationInsertForm;
import hr.fname.elaw.model.Country;
import hr.fname.elaw.model.User;
import hr.fname.elaw.service.LocationService;
import hr.fname.elaw.service.UserService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NavigationController {
	
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/link1", method = RequestMethod.GET)
	public ModelAndView link1GET(Model model) {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("link1view");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/link3", method = RequestMethod.GET)
	public ModelAndView link3GET(Model model) {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("link3view");
		
		return modelAndView;
	}
	
	
	
	@RequestMapping(value = "/getUser", method = RequestMethod.GET)
	public ModelAndView userGET(Model model) {
		
		ModelAndView modelAndView = new ModelAndView();
		
		List<User> korisnici = userService.getAllUsers();
		User kor = korisnici.get(0);
		model.addAttribute("korisnici",kor);
		
		modelAndView.setViewName("link2view");
		
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/loginUser", method = RequestMethod.POST)
	public ModelAndView loginPOST(Model model) {
		
		ModelAndView modelAndView = new ModelAndView();
		
	
		
		modelAndView.setViewName("forma");
		
		
		return modelAndView;
	}

}
