package LibraryManagement.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LibraryManagement.Dao.BooksDao;
import LibraryManagement.Dto.BooksDto;

@Service
public class CategoryServiceImpl implements ICategoryService{

	@Autowired
	private BooksDao booksDao;
	
	public List<BooksDto> GetAllBooksByID(int id) {	
		return booksDao.GetAllBooksByID(id);
	}
	
	public List<BooksDto> GetDataBooksPaginate(int id, int start, int totalPage){		
		return booksDao.GetDataBooksPaginate(id, start, totalPage);
	}

	

	

	
}
