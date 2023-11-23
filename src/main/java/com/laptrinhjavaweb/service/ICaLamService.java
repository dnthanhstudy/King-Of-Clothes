package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.response.CaLamResponse;
import com.laptrinhjavaweb.resquest.CaLamRequest;

public interface ICaLamService {

    CaLamResponse insert (CaLamRequest caLamRequest);

    String getCurrentDateTime();
}
