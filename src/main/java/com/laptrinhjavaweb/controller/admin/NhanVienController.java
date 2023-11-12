package com.laptrinhjavaweb.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/nhan-vien")
public class NhanVienController {

    @GetMapping
    public String nhanvien() {
        return "admin/nhanvien/nhan-vien";
    }

    @GetMapping("/nhan-vien-create")
    public String createNV() {
        return "admin/nhanvien/nhan-vien-create";
    }

    @GetMapping("/nhan-vien-edit/{id}")
    public String updateNV() {
        return "admin/nhanvien/nhan-vien-edit";
    }

    @GetMapping("/nhan-vien-detail/{id}")
    public String detailNV() {
        return "admin/nhanvien/nhan-vien-detail";
    }
}
