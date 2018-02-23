package com.gqw.bean;

import java.util.Date;

public class Zhanghuzhuanzhang {
	private String zhanghu;
	private float zhuanzhangjine;
	private String zhuanruzhanghao;
	private Date time;
	private int loginid;
	public Zhanghuzhuanzhang() {
		super();
	}
	public Zhanghuzhuanzhang(String zhanghu, float zhuanzhangjine,
			String zhuanruzhanghao, Date time, int loginid) {
		super();
		this.zhanghu = zhanghu;
		this.zhuanzhangjine = zhuanzhangjine;
		this.zhuanruzhanghao = zhuanruzhanghao;
		this.time = time;
		this.loginid = loginid;
	}
	public String getZhanghu() {
		return zhanghu;
	}
	public void setZhanghu(String zhanghu) {
		this.zhanghu = zhanghu;
	}
	public float getZhuanzhangjine() {
		return zhuanzhangjine;
	}
	public void setZhuanzhangjine(float zhuanzhangjine) {
		this.zhuanzhangjine = zhuanzhangjine;
	}
	public String getZhuanruzhanghao() {
		return zhuanruzhanghao;
	}
	public void setZhuanruzhanghao(String zhuanruzhanghao) {
		this.zhuanruzhanghao = zhuanruzhanghao;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public int getLoginid() {
		return loginid;
	}
	public void setLoginid(int loginid) {
		this.loginid = loginid;
	}
	
	
}
