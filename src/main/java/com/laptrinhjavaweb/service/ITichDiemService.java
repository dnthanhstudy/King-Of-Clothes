package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.TichDiemResponse;
import com.laptrinhjavaweb.resquest.TichDiemRequest;

public interface ITichDiemService {

    TichDiemResponse save(TichDiemRequest request);

}
