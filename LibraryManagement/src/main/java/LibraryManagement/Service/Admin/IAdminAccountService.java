package LibraryManagement.Service.Admin;

import org.springframework.stereotype.Service;

import LibraryManagement.Entity.AdminEntity;



@Service
public interface IAdminAccountService {
	public AdminEntity CheckAdminAccount(AdminEntity admin);
}
