package com.example.demo.model;

import com.example.demo.entity.User;
import java.util.Optional;

public interface UserService {
	Optional<User> getUserByEmailAndPassword(String email, String password);

	User updateUser(User user);
}