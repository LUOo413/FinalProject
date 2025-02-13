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
import com.example.demo.entity.UserRole;
import com.example.demo.entity.VendorDetail;
import com.example.demo.model.UserService;
import com.example.demo.model.VendorService;


@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private VendorService vendorService;

    // 進入店家個人資料頁面
    @GetMapping("/profile")
    public String getVendorProfile(@RequestParam String email, @RequestParam String password, Model model) {
        Optional<User> user = userService.getUserByEmailAndPassword(email, password);
        
        if (user.isPresent() && user.get().getUserRole().equals(UserRole.vendor)) {
            // 查詢對應的 VendorDetail
        	
            Optional<VendorDetail> vendorDetail = vendorService.getVendorById(user.get().getUserId());
            if (vendorDetail.isPresent()) {
            	model.addAttribute("user",user.get());
                model.addAttribute("vendor", vendorDetail.get());
                return "app-profile"; // 顯示 vendor 的 JSP
            }
        }
        return "error"; // 若找不到，轉向錯誤頁面
    }

    // 更新店家資料
    @PostMapping("/update")
    public String updateVendor(@ModelAttribute VendorDetail vendor, Model model) {
        VendorDetail updatedVendor = vendorService.updateVendor(vendor);
        model.addAttribute("vendor", updatedVendor);
        return "app-profile"; // 更新完後，重新載入頁面
    }
}
