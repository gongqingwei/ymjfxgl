package com.gqw.bean;

import java.util.Date;

public class Tixian {
	private int id;
	private String tixianzhanghu;
	private float tixianjine;
	private float shijijine;
	private int status;
	private int loginid;
	private Date time;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTixianzhanghu() {
		return tixianzhanghu;
	}
	public void setTixianzhanghu(String tixianzhanghu) {
		this.tixianzhanghu = tixianzhanghu;
	}
	public float getTixianjine() {
		return tixianjine;
	}
	public void setTixianjine(float tixianjine) {
		this.tixianjine = tixianjine;
	}
	public float getShijijine() {
		return shijijine;
	}
	public void setShijijine(float shijijine) {
		this.shijijine = shijijine;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getLoginid() {
		return loginid;
	}
	public void setLoginid(int loginid) {
		this.loginid = loginid;
	}
	
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public Tixian() {
		super();
	}
	public Tixian(int id, String tixianzhanghu, float tixianjine,
			float shijijine, int status, int loginid, Date time) {
		super();
		this.id = id;
		this.tixianzhanghu = tixianzhanghu;
		this.tixianjine = tixianjine;
		this.shijijine = shijijine;
		this.status = status;
		this.loginid = loginid;
		this.time=time;
	}
	
	
}
