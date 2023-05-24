package com.mycom.myapp.controller;

import com.mycom.myapp.pojo.User;
import com.mycom.myapp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/toRegister")
    public String toRegister(){
        return "register";
    }

    @RequestMapping("/register")
    public String register(User user, Model model) {
        boolean isOK = userService.register(user);
        if (isOK) {
            model.addAttribute("username", user.getUsername());
            return "index";
        } else {
            return "register";
        }
    }
    @RequestMapping("/login")
    public String login(User user, Model model) {
        User user1 = userService.login(user);
        if (user1!=null) {
            model.addAttribute("user", user);
            return "main";
        } else {
            model.addAttribute("errorMessage","用户名或密码错误");
            model.addAttribute("username",user.getUsername());
            return "index";
        }
    }

    @RequestMapping("/logout")
    public String logout(Model model) {
        model.addAttribute("errorMessage","登出成功");
        return "index";
    }
}