package LibraryManagement.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperAdmin implements RowMapper<AdminEntity> {
	
	public AdminEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		AdminEntity admin = new AdminEntity();
		admin.setId(rs.getInt("id"));
		admin.setName(rs.getString("name"));
		admin.setAccount(rs.getString("account"));
		admin.setPassword(rs.getString("password"));

		return admin;
	}
}

