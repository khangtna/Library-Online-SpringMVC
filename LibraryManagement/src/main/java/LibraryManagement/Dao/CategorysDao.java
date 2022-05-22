package LibraryManagement.Dao;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import LibraryManagement.Entity.MapperCategorys;
import LibraryManagement.Entity.categorys;


@Repository
public class CategorysDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	public List<categorys> GetDataCategorys(){
		List<categorys> list = new ArrayList<categorys>();
		String sql = "SELECT * FROM categorys";
		list = _jdbcTemplate.query(sql, new MapperCategorys());
		return list;
	} 
}
