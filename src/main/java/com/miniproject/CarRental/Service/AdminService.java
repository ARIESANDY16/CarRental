package com.miniproject.CarRental.Service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.miniproject.CarRental.Model.Admin;
import com.miniproject.CarRental.Repository.AdminRepository;

@Service
@Transactional
public class AdminService {
private final AdminRepository adminRepository;
	
	public AdminService(AdminRepository adminRepository) {
		this.adminRepository = adminRepository;
	}
public Admin findByUsernameAdminAndPasswordAdmin(String usernameAdmin, String passwordAdmin) {
	return adminRepository.findByUsernameAdminAndPasswordAdmin(usernameAdmin, passwordAdmin);
}

}
