package LibraryManagement.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LibraryManagement.Dao.AdminDao;
import LibraryManagement.Entity.AdminEntity;


@Service
public class AdminHomeServiceImpl implements IHomeAdminService{
	@Autowired
	private AdminDao adminDao;
	
	public List<AdminEntity> GetDataAdminEntity() {
		return adminDao.getDataAdminEntity();
	}	
}
