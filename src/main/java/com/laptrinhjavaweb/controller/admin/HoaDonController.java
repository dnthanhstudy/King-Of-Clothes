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

    @GetMapping("/hoa-don-off")
    public String hoadonoff(){
        return "admin/giaodich/hoa-don-off";
    }

    @GetMapping("/create")
    public String themhoadon(){
        return "admin/giaodich/hoa-don-create";
    }

    @GetMapping("/detail")
    public String detailhoadon(){
        return "admin/giaodich/hoa-don-detail";
    }

}
