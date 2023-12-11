package com.laptrinhjavaweb.model.response;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class TongTienGioHangResponseClass {
    private Double tongTien;
    private Double tongTienDaGiam;

    public TongTienGioHangResponseClass(TongTienGioHangResponse response) {
        this.tongTien = response.getGiaGoc();
        this.tongTienDaGiam = response.getGiaGiam();
    }

    public Double getSoTienGiam(){
        return tongTien-tongTienDaGiam;
    }

    public Double getTongTienThuc(){
        return tongTienDaGiam==null?tongTien:tongTienDaGiam;
    }
}
