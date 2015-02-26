package hr.fname.elaw.dao.impl;

import hr.fname.elaw.dao.PerspectiveDAO;
import hr.fname.elaw.model.Perspective;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class PerspectiveDAOImpl implements PerspectiveDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<Perspective> getAllPerspectives() {
		List<Perspective> perspectives = null;
		String tSQL = "Select * from perspectives";

		perspectives = jdbcTemplate.query(tSQL, new BeanPropertyRowMapper<Perspective>(
				Perspective.class));
		return perspectives;
	}
}
