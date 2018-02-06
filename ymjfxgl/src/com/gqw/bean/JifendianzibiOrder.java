package com.gqw.bean;

import java.util.Date;

public class JifendianzibiOrder {
	private String number;//编号
	private String ordernumber;
	private int futounumber;
	private float futoumoney;
	private float allfenhong;
	private float truefenhong;
	private Date time;
	private String status;
	private int loginid;
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getOrdernumber() {
		return ordernumber;
	}
	public void setOrdernumber(String ordernumber) {
		this.ordernumber = ordernumber;
	}
	public int getFutounumber() {
		return futounumber;
	}
	public void setFutounumber(int futounumber) {
		this.futounumber = futounumber;
	}
	public float getFutoumoney() {
		return futoumoney;
	}
	public void setFutoumoney(float futoumoney) {
		this.futoumoney = futoumoney;
	}
	public float getAllfenhong() {
		return allfenhong;
	}
	public void setAllfenhong(float allfenhong) {
		this.allfenhong = allfenhong;
	}
	public float getTruefenhong() {
		return truefenhong;
	}
	public void setTruefenhong(float truefenhong) {
		this.truefenhong = truefenhong;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getLoginid() {
		return loginid;
	}
	public void setLoginid(int loginid) {
		this.loginid = loginid;
	}
	public JifendianzibiOrder() {
		super();
	}
	public JifendianzibiOrder(String number, String ordernumber,
			int futounumber, float futoumoney, float allfenhong,
			float truefenhong, Date time, String status, int loginid) {
		super();
		this.number = number;
		this.ordernumber = ordernumber;
		this.futounumber = futounumber;
		this.futoumoney = futoumoney;
		this.allfenhong = allfenhong;
		this.truefenhong = truefenhong;
		this.time = time;
		this.status = status;
		this.loginid = loginid;
	}
	
	
}
