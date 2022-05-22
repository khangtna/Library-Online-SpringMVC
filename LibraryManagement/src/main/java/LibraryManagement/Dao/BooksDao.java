package LibraryManagement.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import LibraryManagement.Dto.BooksDto;
import LibraryManagement.Dto.BooksDtoMapper;


@Repository
public class BooksDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	
	
	private String SqlBooksByID(int id) {
		
		StringBuffer sql= new StringBuffer();
		sql.append("SELECT ");
		sql.append("* ");
		sql.append("FROM ");
		sql.append("books ");
		sql.append("WHERE 1=1 ");
		sql.append("AND id_categorys = " + id+ " ");
		return sql.toString();
	}
	
	private String SqlBooksPaginate(int id, int start, int totalPage) {
		
		StringBuffer sql= new StringBuffer();
		sql.append("SELECT ");
		sql.append("* ");
		sql.append("FROM ");
		sql.append("books ");
		sql.append("WHERE ");
		sql.append(" id_categorys = " + id+ " ");
		sql.append("LIMIT " + start +" , "+ totalPage);
		return sql.toString();
	}
	
	private String SqlBookByID(long id) {
		
		StringBuffer sql= new StringBuffer();
		sql.append("SELECT ");
		sql.append("* ");
		sql.append("FROM ");
		sql.append("books ");
		sql.append("WHERE 1=1 ");
		sql.append("AND ID = " + id+ " ");
		sql.append("LIMIT 1 ");
		return sql.toString();
	}
	
	public int AddBook(BooksDto book) {
		
		StringBuffer sql= new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO books ");
		sql.append("( ");
		sql.append("id_categorys, ");
		sql.append("name, ");
		sql.append("author, ");
		sql.append("ISBN, ");
		sql.append("edition, ");
		sql.append("publisher, ");
		sql.append("length, ");
		sql.append("language, ");
		sql.append("img, ");
		sql.append("summary, ");
		sql.append("url ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("  '"+book.getId_categorys()+"', ");
		sql.append("  '"+book.getName()+"', ");
		sql.append("  '"+book.getAuthor()+"', ");
		sql.append("  '"+book.getISBN()+"', ");
		sql.append("  '"+book.getEdition()+"', ");
		sql.append("  '"+book.getPublisher()+"', ");
		sql.append("  '"+book.getLength()+"', ");
		sql.append("  '"+book.getLanguage()+"', ");
		sql.append("  '"+book.getImg()+"', ");
		sql.append(" '"+book.getSummary()+"', ");
		sql.append(" '"+book.getUrl()+"' ");
		sql.append(") ");
		
		int insert= _jdbcTemplate.update(sql.toString());
		return insert;
		
	}
	
	public int FixBook(int id,BooksDto book) {
		
		StringBuffer sql= new StringBuffer();
		sql.append("UPDATE ");
		sql.append("books ");
		sql.append("SET ");

		sql.append("id_categorys= ");
		sql.append("  '"+book.getId_categorys()+"', ");
		sql.append("name= ");
		sql.append("  '"+book.getName()+"', ");
		sql.append("author= ");
		sql.append("  '"+book.getAuthor()+"', ");
		sql.append("ISBN= ");
		sql.append("  "+book.getISBN()+" , ");
		sql.append("edition= ");
		sql.append("  '"+book.getEdition()+"', ");
		sql.append("publisher= ");
		sql.append("  '"+book.getPublisher()+"', ");
		sql.append("length= ");
		sql.append("  "+book.getLength()+", ");
		sql.append("language= ");
		sql.append("  '"+book.getLanguage()+"', ");
		sql.append("img= ");
		sql.append("  '"+book.getImg()+"', ");
		sql.append("summary= ");
		sql.append(" '"+book.getSummary()+"',  ");
		sql.append("url= ");
		sql.append(" '"+book.getUrl()+"' ");
		sql.append("WHERE ID= "+id);	
		
		
		
		int update= _jdbcTemplate.update(sql.toString());
		return update;
		
	}
	
	
	
	public List<BooksDto> GetDataBooks() {
		
		String sql="SELECT * FROM books";
		List<BooksDto> listBooks= _jdbcTemplate.query(sql, new BooksDtoMapper());				
		return listBooks;
	}

	public List<BooksDto> GetAllBooksByID(int id){
		
		String sql= SqlBooksByID(id);
		List<BooksDto> listBooks = _jdbcTemplate.query(sql, new BooksDtoMapper());				
		return listBooks;
		
	}
	
	
	public List<BooksDto> GetDataBooksPaginate(int id, int start, int totalPage){
		
		String sqlID= SqlBooksByID(id);
		List<BooksDto> listBooksID = _jdbcTemplate.query(sqlID.toString(), new BooksDtoMapper());
		
		List<BooksDto> listBooks = new ArrayList<BooksDto>();
				
		if(listBooksID.size() > 0) {
			String sql= SqlBooksPaginate(id, start-1,totalPage);
			listBooks = _jdbcTemplate.query(sql, new BooksDtoMapper());
		}
						
		return listBooks;
		
	}

	public List<BooksDto> GetBookByID(long id) {
		
		String sql = SqlBookByID(id);
		List<BooksDto> listBookID = _jdbcTemplate.query(sql, new BooksDtoMapper());
		
		return listBookID;
	}
	
	public BooksDto CheckBook(BooksDto book) {
		
		String sql="SELECT * FROM books WHERE name = '"+book.getName()+"' ";
		BooksDto NameBook= _jdbcTemplate.queryForObject(sql, new BooksDtoMapper());				
		return NameBook;
	}
	
	public int DelBook(int id) {
		
		String sql= "DELETE FROM `books` WHERE ID = "+id;
		int del= _jdbcTemplate.update(sql);
		return del;
			
	}
	
	public List<BooksDto> GetBookID(long id) {
		
		String sql="SELECT * FROM books WHERE ID = "+id;
		List<BooksDto> listBooks= _jdbcTemplate.query(sql, new BooksDtoMapper());				
		return listBooks;
	}

	public BooksDto SearchBook(String name) {
		
		String sql="SELECT * FROM books WHERE name = '"+name+"' ";
		BooksDto NameBook= _jdbcTemplate.queryForObject(sql, new BooksDtoMapper());				
		return NameBook;
	}	
	
}
