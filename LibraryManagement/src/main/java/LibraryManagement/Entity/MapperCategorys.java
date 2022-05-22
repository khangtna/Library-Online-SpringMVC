package LibraryManagement.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperCategorys implements RowMapper<categorys> {

	public categorys mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		categorys categorys = new categorys();
		categorys.setID(rs.getInt("ID"));
		categorys.setName(rs.getString("name"));
		return categorys;
	}
}
