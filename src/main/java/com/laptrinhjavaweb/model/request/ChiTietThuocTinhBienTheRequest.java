package com.laptrinhjavaweb.model.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class ChiTietThuocTinhBienTheRequest {

    private Long[] dsThuocTinhBienThe;
}
