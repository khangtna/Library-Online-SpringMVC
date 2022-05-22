package LibraryManagement.userController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import LibraryManagement.Service.User.BookServiceImpl;
import LibraryManagement.Service.User.HomeServiceImpl;

@Controller
public class HomeController {
	
	@Autowired
	HomeServiceImpl HomeService;

	
	
	@RequestMapping(value={"/","/index"}, method= RequestMethod.GET)
	public ModelAndView Index() {
		
		ModelAndView mv= new ModelAndView("user/index");
		mv.addObject("menu", HomeService.GetDataMenu());
		mv.addObject("books", HomeService.GetDataBooks() );
		mv.addObject("categorys", HomeService.GetDataCategorys() );
		return mv;
	}
	
	

	
}
