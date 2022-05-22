package LibraryManagement.adminController;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import LibraryManagement.Service.Admin.AdminHomeServiceImpl;



@Controller
public class BaseAdminController {
	@Autowired
	AdminHomeServiceImpl adminHomeService;
	public ModelAndView _mvAdShare = new ModelAndView();

	@PostConstruct
	public ModelAndView Init() {
		return _mvAdShare;
	}
}
