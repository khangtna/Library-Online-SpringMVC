package LibraryManagement.Service.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LibraryManagement.Dao.AdminDao;
import LibraryManagement.Entity.AdminEntity;



@Service
public class AdminAccountServiceImpl implements IAdminAccountService {
	
	@Autowired
	AdminDao adminDao = new AdminDao();


	public AdminEntity CheckAdminAccount(AdminEntity admin) {
		String pw = admin.getPassword();
		admin = adminDao.GetAdminByAccount(admin);

		if (admin != null) {
			if (pw != admin.getPassword()) {
				return admin;
			} else {
				return null;
			}				
		}
		return null;
	}
}
