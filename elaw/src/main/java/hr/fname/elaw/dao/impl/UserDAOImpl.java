package hr.fname.elaw.dao.impl;

import java.util.List;

import hr.fname.elaw.dao.UserDAO;
import hr.fname.elaw.model.Login;
import hr.fname.elaw.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

@Repository
public class UserDAOImpl implements UserDAO{

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<User> getAllUsers()
	{
		List<User> korisnici = null;
		String tSQL ="Select * from users";
		
		korisnici= jdbcTemplate.query(tSQL, new BeanPropertyRowMapper<User>(User.class));
		
		return korisnici;
		
	}
	
	public User loginUser(Login loginData){
		User korisnik=null;
		String tSQL ="Select 'Suzana' as name, 'Gudelj' as surname from users";
		korisnik= jdbcTemplate.queryForObject(tSQL,new BeanPropertyRowMapper(User.class));
		
		return korisnik;
	}
}
