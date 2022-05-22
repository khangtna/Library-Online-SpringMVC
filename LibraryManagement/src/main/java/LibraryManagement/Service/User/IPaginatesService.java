package LibraryManagement.Service.User;

import org.springframework.stereotype.Service;

import LibraryManagement.Dto.PaginatesDto;

@Service
public interface IPaginatesService {
	public PaginatesDto GetInfoPaginates();

}
