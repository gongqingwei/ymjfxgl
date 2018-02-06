package com.gqw.bean;
/**
 * 用于商品列表分页
 * @author Administrator
 *
 */
public class OrderPager {
	private int pageIndex;//当前页
	private int totalPage;//总页数
	private String ordernumber;
	private String status;
	private int date1;
	private int date2;
	private int prev;//上一页，jsp用
	private int next;//下一页，jsp用
	
	
	public int getPrev() {
		return prev;
	}
	public void setPrev(int prev) {
		this.prev = prev;
	}
	public int getNext() {
		return next;
	}
	public void setNext(int next) {
		this.next = next;
	}
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
	public String getOrdernumber() {
		return ordernumber;
	}
	public void setOrdernumber(String ordernumber) {
		this.ordernumber = ordernumber;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getDate1() {
		return date1;
	}
	public void setDate1(int date1) {
		this.date1 = date1;
	}
	public int getDate2() {
		return date2;
	}
	public void setDate2(int date2) {
		this.date2 = date2;
	}
	public OrderPager() {
		super();
	}
	public OrderPager(int pageIndex, int totalPage, String ordernumber,
			String status, int date1, int date2, int prev, int next) {
		super();
		this.pageIndex = pageIndex;
		this.totalPage = totalPage;
		this.ordernumber = ordernumber;
		this.status = status;
		this.date1 = date1;
		this.date2 = date2;
		this.prev = prev;
		this.next = next;
	}
	
	
	
}
