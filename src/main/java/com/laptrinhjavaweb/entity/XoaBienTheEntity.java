package com.laptrinhjavaweb.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "xoabienthe")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class XoaBienTheEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "ten")
    private String ten;

    @Column(name = "anh")
    private String anh;

    @Column(name = "bienthe_giatri")
    private String bienTheGiaTri;

    @Column(name = "giamua")
    private Double giaMua;

    @Column(name = "giagoc")
    private Double giaGoc;

    @Column(name = "failed")
    private Boolean failed;

    @ManyToOne
    @JoinColumn(name = "idkhachhang")
    private KhachHangEntity khachHang;

}
