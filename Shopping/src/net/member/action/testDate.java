package net.member.action;

import java.text.SimpleDateFormat;

public class testDate {

	public static void main(String[] agr) {
		
		String string = "2019-05-11 19:05:49.0";
		int a = string.indexOf(".");
		String date = string.substring(0,a);	
		System.out.println(date);
	}
	
}
