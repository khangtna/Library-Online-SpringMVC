package LibraryManagement.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LibraryManagement.Dao.BooksDao;
import LibraryManagement.Dto.BooksDto;

@Service
public class BookServiceImpl implements IBookService{
	
	@Autowired
	private BooksDao booksDao= new BooksDao();

	public BooksDto GetBookByID(long id) {	
		List<BooksDto> listBooks= booksDao.GetBookByID(id);
		return listBooks.get(0);
		
	}

	public List<BooksDto> GetBookByIDCategory(int id) {
		return booksDao.GetAllBooksByID(id);
	}


	public int AddBook(BooksDto book) {	
		return booksDao.AddBook(book);
	}


	public boolean CheckBook(BooksDto book) {
		
		String name= book.getName();
		booksDao.CheckBook(book);
		if(book.getName() == name) {
			return true;
		}
		
		return false;
	}

	public int DelBook(int id) {
		return booksDao.DelBook(id);
	}

	public int FixBook(int id,BooksDto book) {
		return booksDao.FixBook(id, book);
	}

	public BooksDto GetBookID(long id) {
		
		List<BooksDto> listBooks= booksDao.GetBookID(id);
		return listBooks.get(0);

	}

	@Override
	public BooksDto GetBookByName(String name) {		
		return booksDao.SearchBook(name);
	}
	
	
}
