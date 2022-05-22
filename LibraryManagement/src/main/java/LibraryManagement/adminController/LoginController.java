package LibraryManagement.adminController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import LibraryManagement.Dto.BooksDto;
import LibraryManagement.Entity.AdminEntity;
import LibraryManagement.Service.Admin.AdminAccountServiceImpl;
import LibraryManagement.Service.User.IHomeService;



@Controller
public class LoginController extends BaseAdminController {
	@Autowired
	AdminAccountServiceImpl accountService = new AdminAccountServiceImpl();
	@Autowired
	private IHomeService homeService;

	@RequestMapping(path = "/admin/allbook", method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session, @ModelAttribute("admin") AdminEntity admin) {

		admin = accountService.CheckAdminAccount(admin);
		
		if (admin != null) {
			_mvAdShare.setViewName("admin/delbook");
			session.setAttribute("LoginInfo1", admin);
			
			_mvAdShare.addObject("delbook", new BooksDto());
			_mvAdShare.addObject("categorys", homeService.GetDataCategorys() );	
			_mvAdShare.addObject("books", homeService.GetDataBooks() );
			
		} else if (admin == null) {
			_mvAdShare.addObject("status", "Username or password is incorrect!");
			_mvAdShare.setViewName("admin/account/adregister");
		}
		return _mvAdShare;
	}

	@RequestMapping(path = "/admin/dangxuat", method = RequestMethod.GET)
	public ModelAndView Login(HttpSession session, HttpServletRequest request, Model model) {
		session.removeAttribute("LoginInfo1");
	    model.addAttribute("admin", new AdminEntity());
		_mvAdShare.setViewName("admin/account/adregister");
		return _mvAdShare;
	}
}
