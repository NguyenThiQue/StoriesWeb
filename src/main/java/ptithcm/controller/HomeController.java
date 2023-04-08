package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Read.entity.UserEntity;
import User.model.User;

@Transactional
@Controller
public class HomeController {
	
	@Autowired
	SessionFactory factory;
	UserEntity userLogin = null;
	UserEntity userAdmin = null;
	
	
	@RequestMapping("/home/homeNotLogin")
	public String homeNotLogin() {
		return "home/homeNotLogin";
	}
	
	@RequestMapping(value = "/home/homeLogin")
	public String homeLogin(ModelMap modelMap) {
		
		return "home/homeLogin";
	}
	
	
	@RequestMapping(value = "/home/logIn", method = RequestMethod.GET)
	public String showLogin(ModelMap modelMap) {
		modelMap.addAttribute("userentity", new UserEntity());
		return "home/logIn";
	}
	
//	@RequestMapping(value = "/home/logIn", method = RequestMethod.POST)
//	public String logIn(ModelMap modelMap,@ModelAttribute("userentity") UserEntity userentity,BindingResult errors,HttpServletRequest request) {
//		List<UserEntity> check= getDSUser();
//		for(UserEntity u:check)
//		{
//				if( userentity.getUsername().trim().equals(u.getUsername())==true)
//				{
//					
//					System.out.println(userentity.getUsername().trim()); 
//					if(userentity.getPassword().trim().equals(u.getPassword())==true)
//					{
//						System.out.println(userentity.getPassword().trim()); 
//						if(u.getVaitro() == false) {
//							HttpSession session=request.getSession();
//							session.setAttribute("userentity", u);
//							System.out.println(userentity);
//							userLogin = u;
//							return "redirect:/read/indexRead.htm";
//						}
//						else {
//							userAdmin = u;
//							return "redirect:/writing/view.htm";
//						}
//							
//					}
//					else
//					{
//						System.out.println(userentity.getUsername().trim()); 
//						errors.rejectValue("password", "userentity", "Sai Mật Khẩu !");
//						return "home/logIn";
//					}
//				}
//		}
//		errors.rejectValue("username", "userentity", "Tên không đúng !");
//		return "home/logIn";
//	}
	

	
	@RequestMapping("/home/signUp")
	public String signUp(@ModelAttribute("user") User user) {
		
		return "home/signUp";
	}
	
	@RequestMapping(value = "/home/signUp", method = RequestMethod.POST)
	public String signUp1(@ModelAttribute("user") User user, ModelMap modelMap, BindingResult error) {
		if(user.getName().trim().isEmpty()) {
			error.rejectValue("name", "user", "Username cannot be empty");
		}
		
		if(user.getEmail().trim().length() == 0) {
			error.rejectValue("email", "user", "Email cannot be empty");
		}
		if(user.getPassword().trim().length() == 0) {
			error.rejectValue("password", "user", "Password cannot be empty");
		}
		if( user.getRepassword().trim().length() == 0 || user.getRepassword().trim().equals(user.getPassword()) == false) {
			error.rejectValue("repassword", "user", "The password entered is incorrect or is empty. Please check again");
		}
		return "home/signUp";
	}
	
	@RequestMapping("/home/userEdit")
	public String userEdit() {
		return "home/userEdit";
	}
	
	public List<UserEntity> getDSUser()
	{
		Session sesion=factory.getCurrentSession();
		String hql="FROM UserEntity";
		Query query=sesion.createQuery(hql);
		List<UserEntity> list=query.list();
		return list;
	}
}
