package LibraryManagement.userController;




import java.io.File;


import javax.servlet.ServletContext;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import LibraryManagement.Dto.BooksDto;

import LibraryManagement.Service.User.BookServiceImpl;

import LibraryManagement.Service.User.IHomeService;

@Controller
public class BookController {

	@Autowired
	private BookServiceImpl bookService= new BookServiceImpl();
	@Autowired
	private IHomeService homeService;
	@Autowired
	ServletContext servletContext;
	
	
	@RequestMapping(value="/book-detail/{id}")
	public ModelAndView Product(@PathVariable long id) {
		
		ModelAndView mv= new ModelAndView("user/products/book_detail");
		
		mv.addObject("book", bookService.GetBookByID(id));
		//mv.addObject("books", homeService.GetDataBooks() );
		mv.addObject("categorys", homeService.GetDataCategorys());
		
		mv.addObject("bookByIDCategory", bookService.GetBookByIDCategory(
				bookService.GetBookByID(id).getId_categorys())) ;
		
		
		
		return mv;
	}
	
	

	@RequestMapping(value="/admin/addbook" , method= RequestMethod.GET)
	public ModelAndView fromAddBook() {
		
		ModelAndView mv= new ModelAndView("admin/addbook");	
		
		mv.addObject("addbook", new BooksDto());
		mv.addObject("categorys", homeService.GetDataCategorys() );

		return mv;
	}
	
	@RequestMapping(value="/admin/addbook" , method= RequestMethod.POST)
	public ModelAndView AddBooks(@ModelAttribute("addbook") BooksDto addbook)
			{	
		
		ModelAndView mv= new ModelAndView("admin/addbook");	
					
		mv.addObject("categorys", homeService.GetDataCategorys());
		
		
		//if (!addbook.getImgFile().isEmpty()) {
			String path = servletContext.getRealPath("/");

			System.out.print("path: " + path);
			
			try {
				addbook.setImg(addbook.getImgFile().getOriginalFilename());

				String filePath = path + "/assets/user/images/img_book/" + addbook.getImg();

				addbook.getImgFile().transferTo(new File(filePath));

				addbook.setImgFile(null);
			} catch (Exception e) {
				e.printStackTrace();
			}
		//}
 
			
			int count= bookService.AddBook(addbook);
			if(count > 0) {
				mv.addObject("status", "Add Book Success!");
			}else  {
				mv.addObject("status", "Add Book Failed! ");
			}	
			
			addbook.setAuthor(null);
			addbook.setEdition(null);
			addbook.setISBN(0);
			addbook.setLanguage(null);
			addbook.setLanguage(null);
			addbook.setLength(0);
			addbook.setPublisher(null);
			addbook.setSummary(null);
			addbook.setName(null);
			addbook.setImgFile(null);
			

		return mv;
	}
	
	
	@RequestMapping(value ="/admin/allbook")
	public ModelAndView formDelBook() {
		
		ModelAndView mv= new ModelAndView("admin/delbook");
		
		mv.addObject("delbook", new BooksDto());
		mv.addObject("categorys", homeService.GetDataCategorys() );	
		mv.addObject("books", homeService.GetDataBooks() );

		
		return mv;
	}
	
	@RequestMapping(value="/admin/delbook/{id}",method= RequestMethod.GET )
	public String DelBooks(@PathVariable int id, Model model) {

		bookService.DelBook(id);
		model.addAttribute("status", "Add Book Success!");
		
		return "redirect:/admin/allbook";
}
	
	
	@RequestMapping(value="/admin/fixbook/{id}" , method= RequestMethod.GET)
	public ModelAndView fromFixBook(@PathVariable int id,@ModelAttribute("fixbook") BooksDto fixbook) {
		
		ModelAndView mv= new ModelAndView("admin/fixbook");	
		
		mv.addObject("fixbook", new BooksDto());
		mv.addObject("categorys", homeService.GetDataCategorys() );
		mv.addObject("book", bookService.GetBookByID(id));
		bookService.GetBookID(id);
		

		return mv;
	}
	
	@RequestMapping(value="/admin/fixbook/{id}" , method= RequestMethod.POST)
	public ModelAndView FixBooks(@ModelAttribute("fixbook") BooksDto fixbook,@PathVariable int id) {
		
		ModelAndView mv= new ModelAndView("admin/fixbook");	
					
		mv.addObject("categorys", homeService.GetDataCategorys());
		
		//if (!fixbook.getImgFile().isEmpty()) {
			String path = servletContext.getRealPath("/");

			System.out.print("path: " + path);
			
			try {
				fixbook.setImg(fixbook.getImgFile().getOriginalFilename());

				String filePath = path + "/assets/user/images/img_book/" + fixbook.getImg();

				fixbook.getImgFile().transferTo(new File(filePath));

				fixbook.setImgFile(null);
			} catch (Exception e) {
				e.printStackTrace();
			}
		//}
			mv.addObject("book", bookService.GetBookByID(id));
			mv.addObject("categorys", homeService.GetDataCategorys() );
		
			bookService.FixBook(id,fixbook);
			mv.addObject("status", "Fix Book Success!");

		return mv;
	}
	
	@RequestMapping(value="/search/{name}",method= RequestMethod.GET )
	public String SearchBooks(@RequestParam(name="name", required= false) String name, ModelMap model) {

		
		if(StringUtils.hasText(name)) {
			bookService.GetBookByName(name);
		}else {
			homeService.GetDataBooks();
		}
		
		
		model.addAttribute("status", "Add Book Success!");
		
		return "redirect:/books";
}
	
}
