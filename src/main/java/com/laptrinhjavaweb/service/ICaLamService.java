package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.CaLamResponse;
import com.laptrinhjavaweb.response.KhacHangResponse;
import com.laptrinhjavaweb.resquest.CaLamRequest;
import com.laptrinhjavaweb.resquest.KhachHangRequest;

public interface ICaLamService {

    CaLamResponse insert (CaLamRequest caLamRequest);

    CaLamResponse update(String ma, CaLamRequest caLamRequest);
}
