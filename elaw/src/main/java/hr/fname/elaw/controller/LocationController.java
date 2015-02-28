package hr.fname.elaw.controller;

import java.util.List;

import hr.fname.elaw.form.ClientInsertForm;
import hr.fname.elaw.model.Country;
import hr.fname.elaw.model.District;
import hr.fname.elaw.service.LocationService;


//import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LocationController {
	
	@Autowired
	private LocationService locationService;
	
	@RequestMapping(value = "/clientInsert", method = RequestMethod.GET)
	public ModelAndView getCountries(Model model) {
		
		ModelAndView modelAndView = new ModelAndView();
		model.addAttribute("clientInsertForm", new ClientInsertForm());
		List<Country> countries = locationService.getCountries();
		model.addAttribute("countryList",countries);
		
		modelAndView.setViewName("clientInsert");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/location/getCountryDistricts", method = RequestMethod.GET, produces= MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String getDistrictsForCountry(@RequestParam("countryId") Integer pCountryId){		
		return locationService.getDistrictsForCountry(pCountryId);
	}
	
	@RequestMapping(value = "/location/getDistrictRegions", method = RequestMethod.GET, produces= MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String getRegionsForDistrict(@RequestParam("districtId") Integer pDistrictId){		
		return locationService.getRegionsForDistrict(pDistrictId);
	}
	
	@RequestMapping(value = "/location/getRegionSettlements", method = RequestMethod.GET, produces= MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String getSettlementsForRegion(@RequestParam("regionId") Integer pRegionId){		
		return locationService.getSettlementsForRegion(pRegionId);
	}

}
