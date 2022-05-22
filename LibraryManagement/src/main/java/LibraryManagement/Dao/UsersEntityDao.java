package LibraryManagement.Dao;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Repository;

import LibraryManagement.Entity.MapperUsersEntity;
import LibraryManagement.Entity.UsersEntity;



@Repository
public class UsersEntityDao extends BaseDao {
	public List<UsersEntity> GetDataUsersEntity() {
		List<UsersEntity> list = new ArrayList<UsersEntity>();
		String sql = "SELECT * FROM users";
		list = _JdbcTemplate.query(sql, new MapperUsersEntity());
		return list;
	}
	
	public static boolean patternMatches(UsersEntity user, String regexPattern) {
		return Pattern.compile(regexPattern).matcher(user.getEmail()).matches();
	}

	public int AddAccount(UsersEntity user) {
		StringBuffer sql = new StringBuffer();
		String regexPattern = "^(?=.{1,64}@)[A-Za-z0-9_-]+(\\.[A-Za-z0-9_-]+)*@" + "[^-][A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$";
		boolean isEmail = patternMatches(user, regexPattern);
		
		if (user.getUser() == "" && user.getEmail() == "" && user.getPassword() == "") {
			return -6;
		} else if (user.getUser() == "" && user.getEmail() != "" && user.getPassword() != "") {
			return 0;
		} else if (user.getUser() != "" && user.getEmail() != "" && user.getPassword() == "") {
			return -1;
		} else if (user.getUser() != "" && user.getEmail() == "" && user.getPassword() != "") {
			return -2;
		} else if (user.getUser() != "" && user.getEmail() == "" && user.getPassword() == "") {
			return -3;
		} else if (user.getUser() == "" && user.getEmail() == "" && user.getPassword() != "") {
			return -4;
		} else if (user.getUser() == "" && user.getEmail() != "" && user.getPassword() == "") {
			return -5;
		} else if (!isEmail) {
			return -8;
		} else {
			String query = "SELECT * FROM users WHERE email = '" + user.getEmail() + "'";
			List<UsersEntity> count = new ArrayList<UsersEntity>();
			count = _JdbcTemplate.query(query, new MapperUsersEntity());

			if (count.isEmpty() != true) {
				return -7;
			} else {
				sql.append("INSERT ");
				sql.append("INTO users ");
				sql.append("( ");
				sql.append("    	user, ");
				sql.append("    	email, ");
				sql.append("    	password ");
				sql.append(") ");
				sql.append("VALUES ");
				sql.append("( ");
				sql.append("    	'" + user.getUser() + "', ");
				sql.append("    	'" + user.getEmail() + "', ");
				sql.append("    	'" + user.getPassword() + "' ");
				sql.append(")");

				int insert = _JdbcTemplate.update(sql.toString());
				return insert;
			}
		}
	};

	public UsersEntity GetUserByAccount(@Nullable UsersEntity user) {
		try {
			String sql = "SELECT * FROM users WHERE email = '" + user.getEmail() + "'";
			UsersEntity email = _JdbcTemplate.queryForObject(sql, new MapperUsersEntity());
			return email;
		} catch (EmptyResultDataAccessException erdae) {
			return null;
		}
	};
}
