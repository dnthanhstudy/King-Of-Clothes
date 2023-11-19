package com.laptrinhjavaweb.api.user;

import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.service.GiaoHangService;
import com.laptrinhjavaweb.service.GioHangService;
import com.laptrinhjavaweb.service.HoaDonService;
import com.laptrinhjavaweb.utils.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/hoadon")
public class ApiHoaDonController {

    @Autowired
    HoaDonService hoaDonService;

    @Autowired
    GiaoHangService giaoHangService;

    @GetMapping("/hdct/{idkh}")
    public ResponseObject getHoaDonChiTiet(@PathVariable(name = "idkh")Long idkh){
        return new ResponseObject(hoaDonService.findHoaDonMoiDat(idkh));
    }

    @GetMapping("/dshoadon")
    public ResponseObject dsHoaDonOnline(){
        return new ResponseObject(hoaDonService.dsHoaDonOnline());
    }


    @GetMapping("/thaydoitrangthai")
    public String thayDoiTrangThai(@RequestParam("idhd")Long idhd,@RequestParam("trangthai")String trangThai){
       return  hoaDonService.thayDoiTrangThaiHoaDon(idhd,trangThai);
    }

    @GetMapping("/dathangnhanhang")
    public ResponseObject datHangNhanHang(@RequestParam(name = "idkh")Long idkh,
                                          @RequestParam(name = "ttgh")Long ttgh){
        HoaDonEntity hoaDon = giaoHangService.thanhToan(idkh,ttgh,"THANHTOANNHANHANG");
        return new ResponseObject("Đặt hàng thành công");
    }

}
