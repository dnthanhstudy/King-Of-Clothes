package com.laptrinhjavaweb.support.supportgiaohang;

import java.sql.Date;

public class DateUtil {
    public static Date dateNow(){
        return new Date(new java.util.Date().getTime());
    }
}
