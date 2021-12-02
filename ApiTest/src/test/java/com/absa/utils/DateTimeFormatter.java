package com.absa.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTimeFomatter {
    public static String getDateInYYYY_MM_DD_Format(){
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        String stringDate = dateFormat.format(date);
        return stringDate;
    }

    public String getDateInYYYY_MM_DDTHH_mm_ss(){
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-ddThh:mm:ss");
        Date date = new Date();
        String stringDate = dateFormat.format(date);
        return stringDate;
    }
}