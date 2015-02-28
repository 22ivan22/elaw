package hr.fname.elaw.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hr.fname.elaw.dao.LocationDao;
import hr.fname.elaw.model.Country;
import hr.fname.elaw.model.District;
import hr.fname.elaw.model.Region;
import hr.fname.elaw.model.Settlement;
import hr.fname.elaw.service.LocationService;

import org.json.JSONArray;
import org.json.JSONObject;

@Service
public class LocationServiceImpl implements LocationService {
	
	@Autowired
	private LocationDao locationDAO;
	
	public List<Country> getCountries(){
		return locationDAO.getCountries();	
	}
	
	public String getDistrictsForCountry(Integer pCountryId){
		List<District> districtsList = locationDAO.getDistrictsForCountry(pCountryId);
		return getJsonFromDistrictList(districtsList);
	}
	
	public String getRegionsForDistrict(Integer pDistrictId){
		List<Region> regionsList = locationDAO.getRegionsForDistrict(pDistrictId);
		return getJsonFromRegionList(regionsList);
	}
	
	public String getSettlementsForRegion(Integer pRegionId){
		List<Settlement> settlementsList = locationDAO.getSettlementsForRegion(pRegionId);
		return getJsonFromSettlementList(settlementsList);
		
	}

	public static String getJsonFromDistrictList(List<District> districts){
	    
		JSONArray jsonArray = new JSONArray();

	    for (int i = 0; i < districts.size(); i++)
	    {
	      JSONObject jsonObj = new JSONObject();
	      jsonObj.put("id", districts.get(i).getId());
	      jsonObj.put("text", districts.get(i).getName());
	      jsonArray.put(jsonObj);
	    }
	    return jsonArray.toString();
	}
	
	public static String getJsonFromRegionList(List<Region> regions){
	    
		JSONArray jsonArray = new JSONArray();

	    for (int i = 0; i < regions.size(); i++)
	    {
	      JSONObject jsonObj = new JSONObject();
	      jsonObj.put("id", regions.get(i).getId());
	      jsonObj.put("text", regions.get(i).getName());
	      jsonArray.put(jsonObj);
	    }
	    return jsonArray.toString();
	}
	
	public static String getJsonFromSettlementList(List<Settlement> settlements){
	    
		JSONArray jsonArray = new JSONArray();

	    for (int i = 0; i < settlements.size(); i++)
	    {
	      JSONObject jsonObj = new JSONObject();
	      jsonObj.put("id", settlements.get(i).getId());
	      jsonObj.put("text", settlements.get(i).getName());
	      jsonArray.put(jsonObj);
	    }
	    return jsonArray.toString();
	}
}
