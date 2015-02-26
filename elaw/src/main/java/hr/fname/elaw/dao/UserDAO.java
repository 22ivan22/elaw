package hr.fname.elaw.dao;

import hr.fname.elaw.model.Login;
import hr.fname.elaw.model.User;

import java.util.List;

public interface UserDAO {
	
	public List<User> getAllUsers();
	
	public User loginUser(Login loginData);
}
