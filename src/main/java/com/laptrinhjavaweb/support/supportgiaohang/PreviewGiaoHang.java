package com.laptrinhjavaweb.support.supportgiaohang;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
public class PreviewGiaoHang {

    private String trans_type; //Loại giao hàng
    private Double total_fee; //Tổng phí

    private PhiGiaoHang fee;//Phí giao
    private Date expected_delivery_time;//Thời gian giao

    private String getLoaiGiaoHang(){
        if (trans_type.equals("truck"))
            return "Đường bộ";
        return "Không biết";
    }
}
