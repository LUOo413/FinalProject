package com.example.demo.model;

import com.example.demo.entity.User;
import java.util.Optional;

import org.springframework.stereotype.Service;

@Service
public interface UserService {
	Optional<User> getUserByEmailAndPassword(String email, String password);

	User updateUser(User user);
}