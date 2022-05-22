package LibraryManagement.Service.User;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LibraryManagement.Dao.UsersEntityDao;
import LibraryManagement.Entity.UsersEntity;



@Service
public class AccountServiceImpl implements IAccountService {
	@Autowired
	UsersEntityDao userDao = new UsersEntityDao();

	public int AddAccount(UsersEntity user) {

		if (user.getPassword() != "") {
			user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
		}

		return userDao.AddAccount(user);
	}

	public UsersEntity CheckAccount(UsersEntity user) {

		String pw = user.getPassword();
		user = userDao.GetUserByAccount(user);

		if (user != null) {
			if (BCrypt.checkpw(pw, user.getPassword())) {
				return user;
			} else {
				return null;
			}				
		}
		return null;
	}
}
