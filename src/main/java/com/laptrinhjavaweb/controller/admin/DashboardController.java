package com.laptrinhjavaweb.controller.admin;

import com.laptrinhjavaweb.response.MyUserResponse;
import com.laptrinhjavaweb.security.utils.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class DashboardController {

    @GetMapping("/dashboards")
    public String dashboard() {
        return "admin/dashboard";
    }

    @GetMapping("/setting/profile")
    public String profile() {
        MyUserResponse myUserResponse = SecurityUtils.getPrincipal();
        if(myUserResponse.getTrangThai().equals("INACTIVE") && myUserResponse.getMaChucVu().equals("STAFF")){
            return "redirect:/admin/giao-ca/mo-ca?is_not_opened_shift";
        }
        return "admin/setting/profile";
    }

    @GetMapping("/setting/tich-diem")
    public String tichdiem() {
        MyUserResponse myUserResponse = SecurityUtils.getPrincipal();
        if(myUserResponse.getTrangThai().equals("INACTIVE") && myUserResponse.getMaChucVu().equals("STAFF")){
            return "redirect:/admin/giao-ca/mo-ca?is_not_opened_shift";
        }
        return "admin/setting/tich-diem";
    }

    @GetMapping("/403")
    public String admin403(){
        return "admin/403";
    }

    @GetMapping("/lich-su-tich-diem")
    public String lstd() {
        return "admin/setting/lich-su-tich-diem";
    }

}


