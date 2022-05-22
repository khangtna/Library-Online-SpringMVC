package LibraryManagement.Service.User;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LibraryManagement.Dao.BooksDao;
import LibraryManagement.Dao.CategorysDao;
import LibraryManagement.Dao.MenuDao;
import LibraryManagement.Dao.UsersEntityDao;
import LibraryManagement.Dto.BooksDto;
import LibraryManagement.Entity.UsersEntity;
import LibraryManagement.Entity.categorys;
import LibraryManagement.Entity.menu;

@Service
public class HomeServiceImpl implements IHomeService {
	
	@Autowired
	private CategorysDao categorysDao;
	@Autowired
	private MenuDao menuDao;
	@Autowired
	private BooksDao booksDao;
	@Autowired
	private UsersEntityDao user;
	
	public List<categorys> GetDataCategorys(){
		return categorysDao.GetDataCategorys();
	}
	
	public List<menu> GetDataMenu(){
		return menuDao.GetDataMenu();
	}

	public List<BooksDto> GetDataBooks() {	
		List<BooksDto> listBooks= booksDao.GetDataBooks();
		return listBooks;
	}
	
	public List<UsersEntity> GetDataUsersEntity() {
		return user.GetDataUsersEntity();
	}
}
