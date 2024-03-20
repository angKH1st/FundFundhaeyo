package com.kh.semi1st.member.model.vo;

import java.sql.Date;

public class Payment {
	
	private String paymentNo;
	private int paymentUserNo;
	private int paymentProjectNo;
	private int paymentAmount;
	private int paymentMethod;
	private String paymentStatus;
	private String paymentDate;
	
	private String paymentUserNickname;
	private String paymentProjectName;
	private String paymentProjectImg;
	
	public String getPaymentProjectImg() {
		return paymentProjectImg;
	}

	public void setPaymentProjectImg(String paymentProjectImg) {
		this.paymentProjectImg = paymentProjectImg;
	}

	public Payment(String paymentNo, int paymentUserNo, int paymentProjectNo, int paymentAmount, int paymentMethod,
			String paymentStatus, String paymentDate, String paymentUserNickname, String paymentProjectName,
			String paymentProjectImg) {
		super();
		this.paymentNo = paymentNo;
		this.paymentUserNo = paymentUserNo;
		this.paymentProjectNo = paymentProjectNo;
		this.paymentAmount = paymentAmount;
		this.paymentMethod = paymentMethod;
		this.paymentStatus = paymentStatus;
		this.paymentDate = paymentDate;
		this.paymentUserNickname = paymentUserNickname;
		this.paymentProjectName = paymentProjectName;
		this.paymentProjectImg = paymentProjectImg;
	}

	public String getPaymentUserNickname() {
		return paymentUserNickname;
	}

	public void setPaymentUserNickname(String paymentUserNickname) {
		this.paymentUserNickname = paymentUserNickname;
	}

	public String getPaymentProjectName() {
		return paymentProjectName;
	}

	public void setPaymentProjectName(String paymentProjectName) {
		this.paymentProjectName = paymentProjectName;
	}

	public Payment(String paymentNo, int paymentUserNo, int paymentProjectNo, int paymentAmount, int paymentMethod,
			String paymentStatus, String paymentDate, String paymentUserNickname, String paymentProjectName) {
		super();
		this.paymentNo = paymentNo;
		this.paymentUserNo = paymentUserNo;
		this.paymentProjectNo = paymentProjectNo;
		this.paymentAmount = paymentAmount;
		this.paymentMethod = paymentMethod;
		this.paymentStatus = paymentStatus;
		this.paymentDate = paymentDate;
		this.paymentUserNickname = paymentUserNickname;
		this.paymentProjectName = paymentProjectName;
	}

	public Payment () {}

	public Payment(String paymentNo, int paymentUserNo, int paymentProjectNo, int paymentAmount, int paymentMethod,
			String paymentStatus, String paymentDate) {
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

	public String getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}

	@Override
	public String toString() {
		return "Payment [paymentNo=" + paymentNo + ", paymentUserNo=" + paymentUserNo + ", paymentProjectNo="
				+ paymentProjectNo + ", paymentAmount=" + paymentAmount + ", paymentMethod=" + paymentMethod
				+ ", paymentStatus=" + paymentStatus + ", paymentDate=" + paymentDate + "]";
	}
}
