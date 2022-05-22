package LibraryManagement.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperMenu implements RowMapper<menu> {

	public menu mapRow(ResultSet rs, int rowNum) throws SQLException {
		menu menus = new menu();
		menus.setID(rs.getInt("ID"));
		menus.setName(rs.getString("name"));
		menus.setUrl(rs.getString("url"));
		return menus;
	}

}
