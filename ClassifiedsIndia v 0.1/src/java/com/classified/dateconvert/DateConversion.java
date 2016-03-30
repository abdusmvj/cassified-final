package com.classified.dateconvert;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateConversion {

    public static String convertDbDate(String dbdate) throws ParseException {
        String returnDate = null;
        String newdate = null;
        if (null != dbdate) {
            String year = dbdate.substring(0, 4);
            String month = dbdate.substring(5, 7);
            String day = dbdate.substring(8, 10);

            returnDate = day + "/" + month + "/" + year;
            System.out.println(returnDate);
            SimpleDateFormat format1 = new SimpleDateFormat("dd/MM/yyyy");
            SimpleDateFormat format2 = new SimpleDateFormat("dd MMM yyyy");
            Date date = format1.parse(returnDate);
            newdate = format2.format(date);
            System.out.println(newdate);
        }

        return newdate;

    }

    public static String convertEmpDate(String date) {
        String returnDate = null;
        if (null != date) {
            String month = date.substring(0, 2);
            String day = date.substring(3, 5);
            String year = date.substring(6, 10);

            returnDate = day + "/" + month + "/" + year;
        }

        return returnDate;

    }

    public static String convertUiDate(String date) {
        String returnDate = null;
        if (null != date) {
            String day = date.substring(0, 2);
            String month = date.substring(3, 5);
            String year = date.substring(6, 10);

            returnDate = year + "-" + month + "-" + day;
        }
        return returnDate;
    }

    public static String AddToDate(String date) {//Added by sanchita
        if (null != date) {

            if (Integer.parseInt(date.substring(0, 2)) <= 12) /* format the date when before 12 */ {
                date = date.concat("AM");
            } else {
                String date1 = null;
                int actualtime = Integer.parseInt(date.substring(0, 2)) - 12;
                if (actualtime <= 9) {
                    date1 = "0" + String.valueOf(actualtime);       /* format the date when it is after 12 */

                } else {
                    date1 = String.valueOf(actualtime);
                }
                date = date.replaceAll(date.substring(0, 2), date1).concat("PM");

            }
        }
        return date;

    }
    public static void main(String[] args) throws ParseException {
        DateConversion dc = new DateConversion();
        dc.convertDbDate("1990-11-23");
    }
}
