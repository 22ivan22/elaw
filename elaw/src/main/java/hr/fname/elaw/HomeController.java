package hr.fname.elaw;

import hr.fname.elaw.model.Login;
import hr.fname.elaw.model.Perspective;
import hr.fname.elaw.service.PerspectiveService;

import java.security.Principal;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private PerspectiveService perspectiveService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		initPerspectiveList(model);
		
		if(session.getAttribute("user")!=null)
			return "forma";
		else
			return "login";
	}
	@RequestMapping("/home")
    public String mypage(Model model, Principal principal,HttpSession session) {
        String userName = principal.getName();
        model.addAttribute("message", "Hi " + userName + ", Welcome to 'Spring Security Custom Login Form Example'");
        session.setAttribute("user", principal.getName());
        return "forma";
    }
	
	
	@ModelAttribute("loginNew")
	public Login getLogin(){
	    return new Login();
	}
	
	
	private void initPerspectiveList(Model model) {
		List<Perspective> perspectives= perspectiveService.getAllPerspectives();
		
		model.addAttribute("perspectiveList",perspectives);
		
	}
	
}
