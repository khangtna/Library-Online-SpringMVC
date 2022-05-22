package LibraryManagement.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import LibraryManagement.Entity.MapperMenu;

import LibraryManagement.Entity.menu;

@Repository
public class MenuDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	public List<menu> GetDataMenu(){
		List<menu> list = new ArrayList<menu>();
		String sql = "SELECT * FROM menu";
		list = _jdbcTemplate.query(sql, new MapperMenu());
		return list;
	} 
}
