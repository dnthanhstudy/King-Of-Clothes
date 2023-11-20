package com.laptrinhjavaweb.resquest;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class GiaTriThuocTinhRequest {

    private Long idThuocTinh;

    private Long idSanPham;

    private String giaTri;
}
