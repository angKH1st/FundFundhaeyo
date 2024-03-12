package com.kh.semi1st.member.model.vo;

import java.sql.Date;

public class Payment {
	
	private String paymentNo;
	private int paymentUserNo;
	private int paymentProjectNo;
	private int paymentAmount;
	private int paymentMethod;
	private String paymentStatus;
	private Date paymentDate;

	public Payment () {}

	public Payment(String paymentNo, int paymentUserNo, int paymentProjectNo, int paymentAmount, int paymentMethod) {
		super();
		this.paymentNo = paymentNo;
		this.paymentUserNo = paymentUserNo;
		this.paymentProjectNo = paymentProjectNo;
		this.paymentAmount = paymentAmount;
		this.paymentMethod = paymentMethod;
	}

	public Payment(String paymentNo, int paymentUserNo, int paymentProjectNo, int paymentAmount, int paymentMethod,
			String paymentStatus, Date paymentDate) {
		super();
		this.paymentNo = paymentNo;
		this.paymentUserNo = paymentUserNo;
		this.paymentProjectNo = paymentProjectNo;
		this.paymentAmount = paymentAmount;
		this.paymentMethod = paymentMethod;
		this.paymentStatus = paymentStatus;
		this.paymentDate = paymentDate;
	}

	public String getPaymentNo() {
		return paymentNo;
	}

	public void setPaymentNo(String paymentNo) {
		this.paymentNo = paymentNo;
	}

	public int getPaymentUserNo() {
		return paymentUserNo;
	}

	public void setPaymentUserNo(int paymentUserNo) {
		this.paymentUserNo = paymentUserNo;
	}

	public int getPaymentProjectNo() {
		return paymentProjectNo;
	}

	public void setPaymentProjectNo(int paymentProjectNo) {
		this.paymentProjectNo = paymentProjectNo;
	}

	public int getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(int paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

	public int getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(int paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public String getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public Date getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}

	@Override
	public String toString() {
		return "Payment [paymentNo=" + paymentNo + ", paymentUserNo=" + paymentUserNo + ", paymentProjectNo="
				+ paymentProjectNo + ", paymentAmount=" + paymentAmount + ", paymentMethod=" + paymentMethod
				+ ", paymentStatus=" + paymentStatus + ", paymentDate=" + paymentDate + "]";
	}
}
