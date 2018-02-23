package com.gqw.bean;

import java.util.Date;

public class Jiangjinmingxi {
	private Date time;
	private float fenhong;
	private float zhituijiang;
	private float jiandianjiang;
	private float fuwujintie;
	private float guanlijiang;
	private float quanguodongshi;
	private float guanlifei;
	private float xiaoji;
	private int loginid;
	private String mingxi;
	public Jiangjinmingxi() {
		super();
	}
	public Jiangjinmingxi(Date time, float fenhong, float zhituijiang,
			float jiandianjiang, float fuwujintie, float guanlijiang,
			float quanguodongshi, float guanlifei, float xiaoji, int loginid,
			String mingxi) {
		super();
		this.time = time;
		this.fenhong = fenhong;
		this.zhituijiang = zhituijiang;
		this.jiandianjiang = jiandianjiang;
		this.fuwujintie = fuwujintie;
		this.guanlijiang = guanlijiang;
		this.quanguodongshi = quanguodongshi;
		this.guanlifei = guanlifei;
		this.xiaoji = xiaoji;
		this.loginid = loginid;
		this.mingxi = mingxi;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public float getFenhong() {
		return fenhong;
	}
	public void setFenhong(float fenhong) {
		this.fenhong = fenhong;
	}
	public float getZhituijiang() {
		return zhituijiang;
	}
	public void setZhituijiang(float zhituijiang) {
		this.zhituijiang = zhituijiang;
	}
	public float getJiandianjiang() {
		return jiandianjiang;
	}
	public void setJiandianjiang(float jiandianjiang) {
		this.jiandianjiang = jiandianjiang;
	}
	public float getFuwujintie() {
		return fuwujintie;
	}
	public void setFuwujintie(float fuwujintie) {
		this.fuwujintie = fuwujintie;
	}
	public float getGuanlijiang() {
		return guanlijiang;
	}
	public void setGuanlijiang(float guanlijiang) {
		this.guanlijiang = guanlijiang;
	}
	public float getQuanguodongshi() {
		return quanguodongshi;
	}
	public void setQuanguodongshi(float quanguodongshi) {
		this.quanguodongshi = quanguodongshi;
	}
	public float getGuanlifei() {
		return guanlifei;
	}
	public void setGuanlifei(float guanlifei) {
		this.guanlifei = guanlifei;
	}
	public float getXiaoji() {
		return xiaoji;
	}
	public void setXiaoji(float xiaoji) {
		this.xiaoji = xiaoji;
	}
	public int getLoginid() {
		return loginid;
	}
	public void setLoginid(int loginid) {
		this.loginid = loginid;
	}
	public String getMingxi() {
		return mingxi;
	}
	public void setMingxi(String mingxi) {
		this.mingxi = mingxi;
	}
	
}
