package com.laptrinhjavaweb.model.response.thongke;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;


@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class AllThongKeResponse {

    DoanhThuBanHangResponse doanhThuBanHang;

    List<TopResponse> dsKhachHangMuaNhieuNhat;
    List<TopResponse> dsSanPhamBanChayNhat;
}
