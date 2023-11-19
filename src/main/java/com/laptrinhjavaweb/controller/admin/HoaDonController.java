package com.laptrinhjavaweb.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/giaodich")
public class HoaDonController {

    @GetMapping("/hoadon")
    public String hoadon(){
        return "admin/giaodich/hoa-don";
    }

    @GetMapping("/themhoadon")
    public String themhoadon(){
        return "admin/giaodich//hoa-don-create";
    }

    @GetMapping("/hoa-don-detail/{id}")
    public String detailhoadon(){
        return "admin/giaodich/hoa-don-detail";
    }
}
