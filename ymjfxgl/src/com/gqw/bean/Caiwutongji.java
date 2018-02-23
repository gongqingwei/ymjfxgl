package com.gqw.bean;

import java.util.Date;

public class Caiwutongji {
	private String type;
	private float zengjiajine;
	private float kouchujine;
	private Date time;
	private String shuoming;
	private int loginid;
	public Caiwutongji() {
		super();
	}
	public Caiwutongji(String type, float zengjiajine, float kouchujine,
			Date time, String shuoming, int loginid) {
		super();
		this.type = type;
		this.zengjiajine = zengjiajine;
		this.kouchujine = kouchujine;
		this.time = time;
		this.shuoming = shuoming;
		this.loginid = loginid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public float getZengjiajine() {
		return zengjiajine;
	}
	public void setZengjiajine(float zengjiajine) {
		this.zengjiajine = zengjiajine;
	}
	public float getKouchujine() {
		return kouchujine;
	}
	public void setKouchujine(float kouchujine) {
		this.kouchujine = kouchujine;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getShuoming() {
		return shuoming;
	}
	public void setShuoming(String shuoming) {
		this.shuoming = shuoming;
	}
	public int getLoginid() {
		return loginid;
	}
	public void setLoginid(int loginid) {
		this.loginid = loginid;
	}
	
	
}
