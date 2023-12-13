package com.laptrinhjavaweb.resquest;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ThuocTinhRequest {

    private String slug;

    private String ten;

    private List<String> giaTris;

    private Long idSanPham;

    private String trangThai = "ACTIVE";
}
