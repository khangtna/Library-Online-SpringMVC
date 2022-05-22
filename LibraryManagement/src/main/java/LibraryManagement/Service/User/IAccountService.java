package LibraryManagement.Service.User;

import org.springframework.stereotype.Service;

import LibraryManagement.Entity.UsersEntity;



@Service
public interface IAccountService {
	public int AddAccount(UsersEntity user);	
	public UsersEntity CheckAccount(UsersEntity user);
}
