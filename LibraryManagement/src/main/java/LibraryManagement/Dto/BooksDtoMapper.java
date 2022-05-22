package LibraryManagement.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;



public class BooksDtoMapper implements RowMapper<BooksDto> {

	public BooksDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		BooksDto books= new BooksDto();
		books.setID(rs.getInt("ID"));
		books.setId_categorys(rs.getInt("id_categorys"));
		books.setName(rs.getString("name"));
		books.setAuthor(rs.getString("author"));
		books.setISBN(rs.getInt("ISBN"));
		books.setEdition(rs.getString("edition"));
		books.setPublisher(rs.getString("publisher"));
		books.setLength(rs.getInt("length"));
		books.setLanguage(rs.getString("language"));
		books.setImg(rs.getString("img"));
		books.setSummary(rs.getString("summary"));
		books.setUrl(rs.getString("url"));
		return books;
		
	
	}
	
}
