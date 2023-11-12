package com.laptrinhjavaweb.controller.thongTinWeb;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/web")
public class ThongTinWebController {

    @GetMapping("/all")
    public String all() {
        return "thongtinWeb/all";
    }

    @GetMapping("/account")
    public String account() {
        return "thongtinWeb/account";
    }

    @GetMapping("/cho-thanh-toan")
    public String chothanhtoan() {
        return "thongtinWeb/cho-thanh-toan";
    }

    @GetMapping("/hoan-thanh")
    public String hoanthanh() {
        return "thongtinWeb/hoan-thanh";
    }

    @GetMapping("/van-chuyen")
    public String vanchuyen() {
        return "thongtinWeb/van-chuyen";
    }

    @GetMapping("/dang-giao")
    public String danggiao() {
        return "thongtinWeb/dang-giao";
    }

    @GetMapping("/da-huy")
    public String dahuy() {
        return "thongtinWeb/da-huy";
    }


}