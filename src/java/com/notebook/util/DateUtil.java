package com.notebook.util;

import java.sql.Date;
import java.util.Calendar;

public class DateUtil {
    public static Date toSQLDate(Calendar date) {
        return new Date(date.getTimeInMillis());
    }
    
    public static Calendar toCalendar(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar;
    }
}
