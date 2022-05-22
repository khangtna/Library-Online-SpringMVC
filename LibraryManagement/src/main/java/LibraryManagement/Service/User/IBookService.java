package LibraryManagement.Service.User;



import java.util.List;

import org.springframework.stereotype.Service;

import LibraryManagement.Dto.BooksDto;

@Service
public interface IBookService {

	public BooksDto GetBookByID(long id);
	
	public List<BooksDto> GetBookByIDCategory(int id);
	
	public int AddBook(BooksDto book);
	
	public int FixBook(int id,	BooksDto book);
	
	public int DelBook(int id);
	
	public boolean CheckBook(BooksDto book);
	
	public BooksDto GetBookID(long id);
	
	public BooksDto GetBookByName(String name);
	
	
}
