package pm.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import pm.dao.Userdao;
import pm.dto.MyUser;
import pm.helper.AES;
@Service   //acts as same as component,but it tells that the object created is buisness logic.(Its a component Specialization).
public class UserService {
	@Autowired
	Userdao dao;
	
	public String register(MyUser user,ModelMap map) {
		if(user.getPassword().equals(user.getCpassword())) {
			if(dao.checkUsername(user.getUsername())) {
				map.put("message", "UserName Already Exists");
				return "register.jsp";
			}
			else {
				user.setPassword(AES.encrypt(user.getUsername()));
				dao.save(user);
				map.put("message", "Account Created Success");
				return "login.jsp";
			}
		}else {
			map.put("message", "Password and Confirm Password is MisMatching");
			return "register.jsp";
		}
		
	}

	public String login(String username, String password, ModelMap map, HttpSession session) {
		MyUser user=dao.findUser(username);
		if(user==null) {
			map.put("message", "Invalid Username");
			return "login.jsp";
		}else {
			if(AES.decrypt(user.getPassword()).equals(password)) {
				session.setAttribute("username", username);
				map.put("message", "Login Successfull");
				return "Home.jsp";
			}
			else {
				map.put("message", "Invalid Password");
				return "login.jsp";
			}
			
		}
	}
	public String loadHome(HttpSession session,ModelMap map) {
		if(session.getAttribute("username")==null) {
			map.put("message", "Invalid Session,First Login");
			return "login.jsp";
		}
		else {
			return "Home.jsp";
		}
	}

	public String logout(HttpSession session, ModelMap map) {
		
		session.removeAttribute("username");
		map.put("message", "Logout Success");
		return "login.jsp";
	}

	
	}



