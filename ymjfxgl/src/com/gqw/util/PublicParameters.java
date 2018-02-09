package com.gqw.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PublicParameters {
	public static int id;
	public static int fenhongNumber=1;
	
	public static Date StringToDate(String dateStr,String formatStr){
		DateFormat dd=new SimpleDateFormat(formatStr);
		Date date=null;
		try {
			date = dd.parse(dateStr);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return date;
	}
	
	
	public static String username;
	public static String password;
	public static String seondpassword;
	public static String thirdpassword;
	public static Date date1;
	public static Date date2;
	
	//弃用
	public static int rengounumber;
	public static String tuijianrennumber;
	public static String baodancenternumber;
	public static String truename;
	public static String phonenumber;
	public static String shenfenzhengnumber;
	public static String adress;
	public static String bankmessage;
	public static String bankzhihang;
	public static String bankfenlichu;
	public static String kaihuname;
	public static String banknumber;
	public static int identity;
}
