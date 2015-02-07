package hr.fname.elaw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NavigationController {
	
	@RequestMapping(value = "/link1", method = RequestMethod.GET)
	public ModelAndView link1GET(Model model) {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("link1view");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/link2", method = RequestMethod.GET)
	public ModelAndView link2GET(Model model) {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("link2view");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/link3", method = RequestMethod.GET)
	public ModelAndView link3GET(Model model) {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("link3view");
		
		return modelAndView;
	}

}
