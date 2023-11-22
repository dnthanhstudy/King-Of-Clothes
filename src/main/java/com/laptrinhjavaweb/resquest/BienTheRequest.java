package com.laptrinhjavaweb.resquest;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BienTheRequest {

    private String ten;

    private Double gia;

    private Integer soLuong;

    private String base64;

    private String hinhAnh;

    private Long idSanPham;

    private Long idThuocTinh;

    public String getBase64() {
        if(base64 != null){
            return base64.split(",")[1];
        }
        return base64;
    }
}
