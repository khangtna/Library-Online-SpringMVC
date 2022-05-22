package LibraryManagement.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Repository;

import LibraryManagement.Entity.AdminEntity;
import LibraryManagement.Entity.MapperAdmin;



@Repository
public class AdminDao extends BaseDao{
	public List<AdminEntity> getDataAdminEntity() {
		List<AdminEntity> list = new ArrayList<AdminEntity>();
		String sql = "SELECT * FROM admin";
		list = _JdbcTemplate.query(sql, new MapperAdmin());
		return list;
	}
	
	@Nullable
	public AdminEntity GetAdminByAccount(@Nullable AdminEntity admin) {
		try {
			String sql = "SELECT * FROM admin WHERE account = '" + admin.getAccount() + "'";
			AdminEntity ad = _JdbcTemplate.queryForObject(sql, new MapperAdmin());
			return ad;
		} catch (EmptyResultDataAccessException erdae) {
			return null;
		}
	};
}
