package com.laptrinhjavaweb.api.hoadon;

import com.laptrinhjavaweb.entity.HoaDonEntity;
import com.laptrinhjavaweb.model.request.ThongTinNhanHangRequest;
import com.laptrinhjavaweb.model.response.HoaDonResponse;
import com.laptrinhjavaweb.service.GiaoHangService;
import com.laptrinhjavaweb.service.HoaDonService;
import com.laptrinhjavaweb.service.Thu3Service;
import com.laptrinhjavaweb.support.supportgiaohang.PreviewGiaoHang;
import com.laptrinhjavaweb.support.supportgiaohang.TrangThaiHoaDon;
import com.laptrinhjavaweb.utils.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@RestController
@RequestMapping("/api/hoadon")
public class ApiHoaDonController {

    @Autowired
    HoaDonService hoaDonService;

    @Autowired
    GiaoHangService giaoHangService;

    @Autowired
    RestTemplate restTemplate;

    @Autowired
    ApiGiaoHangController giaoHangController;
    @Autowired
    Thu3Service thu3Service;

    @GetMapping("/findall")
    public List<HoaDonResponse> findAllHoaDon(){
        return hoaDonService.dsHoadon();
    }

    @GetMapping("/dshoadondamua/{idkh}")
    public ResponseObject getDsHoaDonTheoTrangThai(@PathVariable("idkh")Long idkh){
        return new ResponseObject(hoaDonService.dsHoaDonDaMua(idkh));
    }

    @GetMapping("/dshdtheott/{idkh}")
    public ResponseObject getDsHoaDonTheoTrangThai(@PathVariable("idkh")Long idkh,
                                                   @RequestParam("trangthai")String trangThai){
        return new ResponseObject(hoaDonService.dsHoaDonTheoTrangThai(idkh,trangThai));
    }

    @GetMapping("/chuanbidat/{idkh}")
    public ResponseObject getHoaDonChiTiet(@PathVariable(name = "idkh")Long idkh){
        return new ResponseObject(hoaDonService.findHoaDonMoiDat(idkh));
    }


    @GetMapping("/dshoadon")
    public ResponseObject dsHoaDonOnline(){
        return new ResponseObject(hoaDonService.dsHoaDonOnline());
    }


    @GetMapping("/thaydoitrangthai")
    public String thayDoiTrangThai(@RequestParam("idhd")Long idhd,
                                   @RequestParam("trangthai")String trangThai,
                                   @RequestParam(value = "luuy",required = false,defaultValue = "")String luuy
    ){
        hoaDonService.thayDoiTrangThaiHoaDon(idhd,trangThai,luuy);
        PreviewGiaoHang previewGiaoHang = giaoHangController.datHang(idhd);
        if (trangThai.equals(TrangThaiHoaDon.DANHANDON)){
            thu3Service.themTrangThaiGiaoHang(previewGiaoHang.getMaHoaDon(),"Đang được vận chuyển");
        }else if (trangThai.equals(TrangThaiHoaDon.HUYDON)){
            thu3Service.themTrangThaiGiaoHang(previewGiaoHang.getMaHoaDon(),"Đơn hàng đã huỷ");
        }else if(trangThai.equals(TrangThaiHoaDon.DANHANHANG)){
            thu3Service.themTrangThaiGiaoHang(previewGiaoHang.getMaHoaDon(),"Đã nhận hàng");
        }
       return  "Thay đổi trạng thái thành công";
    }

    @PostMapping("/dathangnhanhang")
    public ResponseObject datHangNhanHang(@RequestBody ThongTinNhanHangRequest request
                                          ){
        HoaDonEntity hoaDon = giaoHangService.thanhToan(request.getIdkh(),request.getTtgh(),
                "THANHTOANNHANHANG", request.getPhiship(),request.getLuuy(),request.getTongTien());
        return new ResponseObject("Đặt hàng thành công");
    }

    @PostMapping("/datvidientu")
    public ResponseObject datHangViDienThu(@RequestBody ThongTinNhanHangRequest request
    ){
        HoaDonEntity hoaDon = giaoHangService.thanhToan(request.getIdkh(),request.getTtgh(),
                "VIDIENTU", request.getPhiship(),request.getLuuy(),request.getTongTien());
        return new ResponseObject("Đặt hàng thành công");
    }
    @GetMapping("/huydathang/{idkh}")
    public ResponseObject huyDatHang(@PathVariable("idkh")Long idkh){
        return hoaDonService.huyDatHang(idkh);
    }
}
