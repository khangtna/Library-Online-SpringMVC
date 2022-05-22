package LibraryManagement.userController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import LibraryManagement.Entity.UsersEntity;
import LibraryManagement.Service.User.AccountServiceImpl;



@Controller
public class RegisterController extends BaseController {
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();

	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public ModelAndView Register() {
		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user", new UsersEntity());
		
		return _mvShare;
	}

	@RequestMapping(value = "/dang-ky", method = RequestMethod.POST)
	public ModelAndView CreateRegister(@ModelAttribute("user") UsersEntity user) {
		int count = accountService.AddAccount(user);
		if (count > 0) {
			_mvShare.addObject("status", "Register Successfully!");
		} else if (count == 0) {
			_mvShare.addObject("status", "username cannot be empty!");
		} else if (count == -1) {
			_mvShare.addObject("status", "password cannot be empty!");
		} else if (count == -2) {
			_mvShare.addObject("status", "email cannot be empty!");
		} else if (count == -3) {
			_mvShare.addObject("status", " email & password cannot be empty!");
		} else if (count == -4) {
			_mvShare.addObject("status", "user & email cannot be empty!");
		} else if (count == -5) {
			_mvShare.addObject("status", " user & password cannot be empty!");
		} else if (count == -6) {
			_mvShare.addObject("status", "Do not miss all information!");
		} else if (count == -7) {
			_mvShare.addObject("status", "Email already exists!");
		} else if (count == -8) {
			_mvShare.addObject("status", "Invalid input Email !");
		} else {
			_mvShare.addObject("status", "Register Failed!");

		}
		_mvShare.setViewName("user/account/register");
		return _mvShare;
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session, @ModelAttribute("user") UsersEntity user) {
		
		user = accountService.CheckAccount(user);		
		if (user != null) {
			_mvShare.setViewName("redirect:index");
			session.setAttribute("LoginInfo", user);		
		} else if (user == null) {
			_mvShare.addObject("status1", "Username or password is incorrect!");
			_mvShare.setViewName("user/account/register");
		}
		return _mvShare;
	}
	
	@RequestMapping(value="/dang-xuat", method = RequestMethod.GET)
	public String Login(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("LoginInfo");
		return "redirect:"+request.getHeader("Referer");
	}
}
