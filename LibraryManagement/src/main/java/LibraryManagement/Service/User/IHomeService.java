package LibraryManagement.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LibraryManagement.Dto.BooksDto;
import LibraryManagement.Entity.UsersEntity;
import LibraryManagement.Entity.categorys;
import LibraryManagement.Entity.menu;

@Service
public interface IHomeService {

	@Autowired
	public List<categorys> GetDataCategorys();
	public List<menu> GetDataMenu();
	public List<BooksDto> GetDataBooks();
	public List<UsersEntity> GetDataUsersEntity();
}
