package com.laptrinhjavaweb.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/giao-dich")
public class HoaDonController {

    @GetMapping("/hoa-don")
    public String hoadon(){
        return "admin/giaodich/hoa-don";
    }

    @GetMapping("/hoa-don-create")
    public String themhoadon(){
        return "admin/giaodich//hoa-don-create";
    }

    @GetMapping("/hoa-don-detail/{id}")
    public String detailhoadon(){
        return "admin/giaodich/hoa-don-detail";
    }
}
