package com.laptrinhjavaweb.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "trangthaigiaohang")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class TrangThaiGiaoHangEntity extends BaseEntity{

    @Column(name = "tentrangthai")
    private String tenTrangThai;
    @ManyToOne
    @JoinColumn(name = "idgiaohang")
    private HoaDonEntity hoaDon;
}
