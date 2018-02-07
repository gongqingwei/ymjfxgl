package com.gqw.bean;

import java.util.Date;

public class Email {
	private int id;
	private String fasongzhe;
	private String addressee;
	private String title;
	private String text;
	private Date time;
	private String status;
	private int loginid;
	public Email() {
		super();
	}
	public Email(int id,String fasongzhe, String addressee, String title, String text,
			Date time, String status, int loginid) {
		super();
		this.id = id;
		this.fasongzhe=fasongzhe;
		this.addressee = addressee;
		this.title = title;
		this.text = text;
		this.time = time;
		this.status = status;
		this.loginid = loginid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFasongzhe() {
		return fasongzhe;
	}
	public void setFasongzhe(String fasongzhe) {
		this.fasongzhe = fasongzhe;
	}
	public String getAddressee() {
		return addressee;
	}
	public void setAddressee(String addressee) {
		this.addressee = addressee;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
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
	
}
