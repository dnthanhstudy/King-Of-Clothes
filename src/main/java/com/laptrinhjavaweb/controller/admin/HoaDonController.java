package com.laptrinhjavaweb.controller.admin;

import com.laptrinhjavaweb.response.MyUserResponse;
import com.laptrinhjavaweb.security.utils.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/giao-dich")
public class HoaDonController {

    @GetMapping("/hoa-don")
    public String hoadon(){
        MyUserResponse myUserResponse = SecurityUtils.getPrincipal();
        if(myUserResponse.getTrangThai().equals("INACTIVE") && myUserResponse.getMaChucVu().equals("STAFF")){
            return "redirect:/admin/giao-ca/mo-ca?is_not_opened_shift";
        }
        return "admin/giaodich/hoa-don";
    }

    @GetMapping("/hoa-don-off")
    public String hoadonoff(){
        MyUserResponse myUserResponse = SecurityUtils.getPrincipal();
        if(myUserResponse.getTrangThai().equals("INACTIVE") && myUserResponse.getMaChucVu().equals("STAFF")){
            return "redirect:/admin/giao-ca/mo-ca?is_not_opened_shift";
        }
        return "admin/giaodich/hoa-don-off";
    }

    @GetMapping("/create")
    public String themhoadon(){
        MyUserResponse myUserResponse = SecurityUtils.getPrincipal();
        if(myUserResponse.getTrangThai().equals("INACTIVE") && myUserResponse.getMaChucVu().equals("STAFF")){
            return "redirect:/admin/giao-ca/mo-ca?is_not_opened_shift";
        }
        return "admin/giaodich/hoa-don-create";
    }

    @GetMapping()
    public String hoadoncho(){
        MyUserResponse myUserResponse = SecurityUtils.getPrincipal();
        if(myUserResponse.getTrangThai().equals("INACTIVE") && myUserResponse.getMaChucVu().equals("STAFF")){
            return "redirect:/admin/giao-ca/mo-ca?is_not_opened_shift";
        }
        return "admin/giaodich/hoa-don-cho";
    }

    @GetMapping("/detail")
    public String detailhoadon(){
        return "admin/giaodich/hoa-don-detail";
    }

}
