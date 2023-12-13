package com.laptrinhjavaweb.controller.admin;

import com.laptrinhjavaweb.response.MyUserResponse;
import com.laptrinhjavaweb.security.utils.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/giao-ca")
public class GiaoCaController {

    @GetMapping("/mo-ca")
    public String moca(){
        return "admin/giaoca/moca";
    }

    @GetMapping("/dong-ca")
    public String dongca(){
        MyUserResponse myUserResponse = SecurityUtils.getPrincipal();
        if(myUserResponse.getTrangThai().equals("INACTIVE") && myUserResponse.getMaChucVu().equals("STAFF")){
            return "redirect:/admin/giao-ca/mo-ca?is_not_opened_shift";
        }
        return "admin/giaoca/dongca";
    }

    @GetMapping("/thong-ke-giao-ca")
    public String thongke(){
        return "admin/giaoca/thong-ke-giao-ca";
    }

    @GetMapping("/chi-tiet-ca-lam/{id}")
    public String chitiet(){
        return "admin/giaoca/chi-tiet-ca-lam";
    }
}
