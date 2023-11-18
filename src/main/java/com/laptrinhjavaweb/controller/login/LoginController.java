package com.laptrinhjavaweb.controller.login;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String login(){
        return "login/login";
    }

    @GetMapping("/access-denied")
    public String accessDeniedWeb(){
        return "redirect:/login?is_not_login";
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

    @GetMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login";
    }
}
