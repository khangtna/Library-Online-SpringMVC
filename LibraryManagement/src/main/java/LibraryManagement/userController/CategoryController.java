package LibraryManagement.userController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import LibraryManagement.Dto.PaginatesDto;
import LibraryManagement.Service.User.CategoryServiceImpl;
import LibraryManagement.Service.User.HomeServiceImpl;
import LibraryManagement.Service.User.PaginatesServiceImpl;

@Controller
public class CategoryController {
	
	@Autowired
	HomeServiceImpl HomeService;
	@Autowired
	private CategoryServiceImpl categoryService;
	@Autowired
	private PaginatesServiceImpl paginatesService;
	
	int totalBooksPage=9;
	
	
	@RequestMapping(value="/books")
	public ModelAndView Books() {
		
		ModelAndView mv= new ModelAndView("user/products/allbooks");
		mv.addObject("categorys", HomeService.GetDataCategorys() );
		mv.addObject("books", HomeService.GetDataBooks() );
		
		
		
		return mv;
	}
	
	@RequestMapping(value="/books/{id}")
	public ModelAndView Product(@PathVariable String id) {
		
		ModelAndView mv= new ModelAndView("user/products/books");
		
		mv.addObject("books", HomeService.GetDataBooks() );
		mv.addObject("categorys", HomeService.GetDataCategorys());
		
		int totalData= categoryService.GetAllBooksByID(Integer.parseInt(id)).size();
		PaginatesDto paginatesInfo= paginatesService.GetInfoPaginates(totalData, totalBooksPage, 1);
		
		mv.addObject("idcategory",id);
		mv.addObject("paginatesInfo",paginatesInfo);
		mv.addObject("booksPaginate",categoryService.GetDataBooksPaginate(Integer.parseInt(id),paginatesInfo.getStart(),totalBooksPage));

		return mv;
	}
	
	@RequestMapping(value="/books/{id}/{currentPage}")
	public ModelAndView Product(@PathVariable String id,@PathVariable String currentPage) {
		
		ModelAndView mv= new ModelAndView("user/products/books");
		
		mv.addObject("books", HomeService.GetDataBooks() );
		mv.addObject("categorys", HomeService.GetDataCategorys());
		
		int totalData= categoryService.GetAllBooksByID(Integer.parseInt(id)).size();
		PaginatesDto paginatesInfo= paginatesService.GetInfoPaginates(totalData, totalBooksPage, Integer.parseInt(currentPage));
		
		mv.addObject("idcategory",id);
		mv.addObject("paginatesInfo",paginatesInfo);
		mv.addObject("booksPaginate",categoryService.GetDataBooksPaginate(Integer.parseInt(id),paginatesInfo.getStart(), totalBooksPage));

		return mv;
	}
	
	@RequestMapping(value="/contact")
	public ModelAndView Contact() {
		
		ModelAndView mv= new ModelAndView("user/contact/contact");
		mv.addObject("categorys", HomeService.GetDataCategorys() );
		mv.addObject("books", HomeService.GetDataBooks() );
		
		return mv;
	}
}
