package hr.fname.elaw.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import hr.fname.elaw.dao.LocationDao;
import hr.fname.elaw.model.Country;
import hr.fname.elaw.model.District;
import hr.fname.elaw.model.Region;
import hr.fname.elaw.model.Settlement;

@Repository
public class LocationDaoImpl implements LocationDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<Country> getCountries()
	{
		List<Country> countries = null;
		String tSQL ="SELECT * FROM country ORDER BY name_cro";
		
		countries= jdbcTemplate.query(tSQL, new BeanPropertyRowMapper<Country>(Country.class));
		
		return countries;
		
	}
	
	public List<District> getDistrictsForCountry(Integer pCountryId)
	{
		List<District> districts = null;
		String tSQL ="SELECT * FROM district WHERE country_id=" + pCountryId + " ORDER BY name";
		
		districts= jdbcTemplate.query(tSQL, new BeanPropertyRowMapper<District>(District.class));
		
		return districts;
		
	}
	
	public List<Region> getRegionsForDistrict(Integer pDistrictId)
	{
		List<Region> regions = null;
		String tSQL ="SELECT * FROM region WHERE district_id=" + pDistrictId + " ORDER BY name";
		
		regions= jdbcTemplate.query(tSQL, new BeanPropertyRowMapper<Region>(Region.class));
		
		return regions;
		
	}
	
	public List<Settlement> getSettlementsForRegion(Integer pRegionId)
	{
		List<Settlement> settlements = null;
		String tSQL ="SELECT * FROM settlement WHERE region_id=" + pRegionId + " ORDER BY name";
		
		settlements= jdbcTemplate.query(tSQL, new BeanPropertyRowMapper<Settlement>(Settlement.class));
		
		return settlements;
		
	}

}
