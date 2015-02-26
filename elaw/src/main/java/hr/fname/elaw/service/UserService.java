package hr.fname.elaw.service;

import java.util.List;

import hr.fname.elaw.model.Login;
import hr.fname.elaw.model.User;

public interface UserService {

	public List<User> getAllUsers();
	
	public User loginUser(Login loginData);
	
}
