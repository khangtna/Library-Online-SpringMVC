package LibraryManagement.userController;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import LibraryManagement.Service.User.HomeServiceImpl;



@Controller
public class BaseController {
	@Autowired
	HomeServiceImpl _HomeService;
	public ModelAndView _mvShare = new ModelAndView();
	public ModelAndView _mvAdShare = new ModelAndView();
	
	
}
