package com.kh.semi1st.member.model.vo;

import java.sql.Date;

public class Order {
	
	private int orderNo;
	private int orderUserNo;
	private int orderProjectNo;
	private int orderOptionNo;
	private String orderStatus;
	private String orderPaymentNo;
	private Date orderDate;

	public Order() {}
	
	public Order(int orderUserNo, int orderProjectNo, int orderOptionNo, String orderPaymentNo) {
		super();
		this.orderUserNo = orderUserNo;
		this.orderProjectNo = orderProjectNo;
		this.orderOptionNo = orderOptionNo;
		this.orderPaymentNo = orderPaymentNo;
	}

	public Order(int orderNo, int orderUserNo, int orderProjectNo, int orderOptionNo, String orderStatus,
			String orderPaymentNo, Date orderDate) {
		super();
		this.orderNo = orderNo;
		this.orderUserNo = orderUserNo;
		this.orderProjectNo = orderProjectNo;
		this.orderOptionNo = orderOptionNo;
		this.orderStatus = orderStatus;
		this.orderPaymentNo = orderPaymentNo;
		this.orderDate = orderDate;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getOrderUserNo() {
		return orderUserNo;
	}

	public void setOrderUserNo(int orderUserNo) {
		this.orderUserNo = orderUserNo;
	}

	public int getOrderProjectNo() {
		return orderProjectNo;
	}

	public void setOrderProjectNo(int orderProjectNo) {
		this.orderProjectNo = orderProjectNo;
	}

	public int getOrderOptionNo() {
		return orderOptionNo;
	}

	public void setOrderOptionNo(int orderOptionNo) {
		this.orderOptionNo = orderOptionNo;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public String getOrderPaymentNo() {
		return orderPaymentNo;
	}

	public void setOrderPaymentNo(String orderPaymentNo) {
		this.orderPaymentNo = orderPaymentNo;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	@Override
	public String toString() {
		return "Order [orderNo=" + orderNo + ", orderUserNo=" + orderUserNo + ", orderProjectNo=" + orderProjectNo
				+ ", orderOptionNo=" + orderOptionNo + ", orderStatus=" + orderStatus + ", orderPaymentNo="
				+ orderPaymentNo + ", orderDate=" + orderDate + "]";
	}
}
