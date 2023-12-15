package com.laptrinhjavaweb.response;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class TichDiemResponse {

    private Long id;

    private KhacHangResponse khachHang;

    private Integer soDiem;
}
