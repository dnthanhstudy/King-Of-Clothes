package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.QuyDoiDiemResponse;
import com.laptrinhjavaweb.resquest.QuyDoiDiemRequest;

public interface IQuyDoiDiemService {

    QuyDoiDiemResponse quyDoiDiem(QuyDoiDiemRequest request);
}
