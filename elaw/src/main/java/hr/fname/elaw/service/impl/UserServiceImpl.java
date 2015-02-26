package hr.fname.elaw.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




import hr.fname.elaw.dao.UserDAO;
import hr.fname.elaw.model.Login;
import hr.fname.elaw.model.User;
import hr.fname.elaw.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	public List<User> getAllUsers() {
		return userDAO.getAllUsers();
	}

	public User loginUser(Login loginData) {
		return userDAO.loginUser(loginData);
	}
}
