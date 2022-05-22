package LibraryManagement.Dao;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import LibraryManagement.Entity.MapperUsers;
import LibraryManagement.Entity.Users;

@Repository
public class UsersDao {

	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	public int AddAccount(Users user) {
		
		StringBuffer sql= new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO users ");
		sql.append("( ");
		sql.append("email, ");
		sql.append("password, ");
		sql.append("name ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("  '"+user.getEmail()+"', ");
		sql.append(" '"+user.getPassword()+"', ");
		sql.append(" '"+user.getName()+"' ");
		sql.append(") ");
		
		int insert= _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public Users GetUserByAcc(Users user) {
		
		String sql="SELECT * FROM users WHERE email= '"+user.getEmail()+"' ";
		Users result = _jdbcTemplate.queryForObject(sql, new MapperUsers());
		return result;
		
	}
	
}
