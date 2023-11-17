package com.laptrinhjavaweb.controller.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class LoginController {

    @GetMapping("/login")
    public String login(){
        return "login/login";
    }

    @GetMapping("/access-denied")
    public String accessDeniedWeb(){
        return "redirect:/login?is_login=false";
    }

    @GetMapping("/register")
    public String register(){
        return "login/register";
    }

    @GetMapping("/forgotpassword")
    public String forgotpassword(){
        return "login/forgotpassword";
    }

    @GetMapping("/changePassword")
    public String changePassword(){
        return "login/changePass";
    }
}
