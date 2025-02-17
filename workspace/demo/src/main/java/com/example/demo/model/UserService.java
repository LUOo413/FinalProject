package com.example.demo.model;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.demo.entity.User;

@Service
public interface UserService {
	Optional<User> getUserByEmailAndPassword(String email, String password);

	User updateUser(User user);

	public boolean checkLogin(User users);
	public void deleteUserById(Integer userId);
}