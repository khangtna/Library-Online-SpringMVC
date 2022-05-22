package LibraryManagement.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperUsers implements RowMapper<Users>{

	public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Users users = new Users();
		users.setID(rs.getInt("id"));
		users.setEmail(rs.getString("email"));
		users.setPassword(rs.getString("password"));
		users.setName(rs.getString("user"));
		return users;
	}
	
}
