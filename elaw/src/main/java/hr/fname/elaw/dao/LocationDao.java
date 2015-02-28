package hr.fname.elaw.dao;

import hr.fname.elaw.model.Country;
import hr.fname.elaw.model.District;
import hr.fname.elaw.model.Region;
import hr.fname.elaw.model.Settlement;

import java.util.List;

public interface LocationDao {
	
	public List<Country> getCountries();
	public List<District> getDistrictsForCountry(Integer countryId);
	public List<Region> getRegionsForDistrict(Integer districtId);
	public List<Settlement> getSettlementsForRegion(Integer regionId);

}
