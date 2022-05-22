package LibraryManagement.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import LibraryManagement.Entity.AdminEntity;


@Service
public interface IHomeAdminService {
	@Autowired
	public List<AdminEntity> GetDataAdminEntity();
}
