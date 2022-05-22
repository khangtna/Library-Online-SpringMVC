package LibraryManagement.Dao;

import java.lang.module.ModuleDescriptor.Provides;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;

@Repository
public class HomeDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;

	
	}
