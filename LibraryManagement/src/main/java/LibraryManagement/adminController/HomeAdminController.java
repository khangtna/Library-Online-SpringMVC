package LibraryManagement.adminController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import LibraryManagement.Entity.AdminEntity;



@Controller
public class HomeAdminController extends BaseAdminController {
			
	@RequestMapping(value={"/admin/"})
	public ModelAndView Login(Model model) { 
	    model.addAttribute("admin", new AdminEntity());
	    _mvAdShare.setViewName("admin/account/adregister");
	    return _mvAdShare;
	}
}
