package com.util;

import java.util.Calendar;
import java.util.Date;

public class DateUitls {
	
	/**
     * 日期月份相加或者相减
     * @param d
     * @param month
     * @return
     */
    public static Date getDateNow(Date d ,Integer hour){
        try{
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(d);
            calendar.add(Calendar.MINUTE, hour);
            Date dateNow = calendar.getTime();
            return dateNow;
        }catch (Exception e){
            throw new IllegalArgumentException("日期运算失败");
        }
    }

}
