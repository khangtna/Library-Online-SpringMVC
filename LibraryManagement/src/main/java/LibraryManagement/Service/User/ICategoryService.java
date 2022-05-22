package LibraryManagement.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import LibraryManagement.Dto.BooksDto;

@Service
public interface ICategoryService {

	public List<BooksDto> GetAllBooksByID(int id);
	
	public List<BooksDto> GetDataBooksPaginate(int id, int start, int totalPage);
}
