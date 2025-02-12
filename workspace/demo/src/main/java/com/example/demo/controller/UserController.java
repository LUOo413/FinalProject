package com.example.demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.User;
import com.example.demo.model.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    // 進入個人資料頁面 (用 email 和 password 查找)
    @GetMapping("/profile")
    public String getUserProfile(@RequestParam String email, @RequestParam String password, Model model) {
        Optional<User> user = userService.getUserByEmailAndPassword(email, password);
        if (user.isPresent()) {
            model.addAttribute("user", user.get());
            return "user-profile"; // 會轉向 user-profile.jsp
        }
        return "error"; // 若找不到，轉向錯誤頁面
    }

    // 更新使用者資料
    @PostMapping("/update")
    public String updateUser(@ModelAttribute User user, Model model) {
        User updatedUser = userService.updateUser(user);
        model.addAttribute("user", updatedUser);
        return "user-profile"; // 更新完後，重新載入頁面
    }
}