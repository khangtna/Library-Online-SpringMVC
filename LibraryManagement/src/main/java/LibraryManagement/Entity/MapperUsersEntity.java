package LibraryManagement.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperUsersEntity implements RowMapper<UsersEntity>{
	
	public UsersEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		UsersEntity users = new UsersEntity();
		users.setId(rs.getInt("id"));
		users.setUser(rs.getString("user"));
		users.setEmail(rs.getString("email"));
		users.setPassword(rs.getString("password"));
		return users;
	}
}
