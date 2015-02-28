package hr.fname.elaw.service;

import hr.fname.elaw.model.Country;

import java.util.List;


public interface LocationService {
	
	public List<Country> getCountries();
	public String getDistrictsForCountry(Integer countryId);
	public String getRegionsForDistrict(Integer districtId);
	public String getSettlementsForRegion(Integer regionId);

}
