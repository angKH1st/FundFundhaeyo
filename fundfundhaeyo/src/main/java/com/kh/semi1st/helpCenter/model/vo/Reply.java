package com.kh.semi1st.helpCenter.model.vo;

import java.sql.Date;

public class Reply {

	private int replyNo;
	private String replyContent;
	private int replyRefNo;
	private String replyWriter;
	private Date replyCreateDate;
	private Date replyModifyDate;
	private String replyStatus;
	
	public Reply() {}

	public Reply(int replyNo, String replyContent, int replyRefNo, String replyWriter, Date replyCreateDate,
			Date replyModifyDate, String replyStatus) {
		super();
		this.replyNo = replyNo;
		this.replyContent = replyContent;
		this.replyRefNo = replyRefNo;
		this.replyWriter = replyWriter;
		this.replyCreateDate = replyCreateDate;
		this.replyModifyDate = replyModifyDate;
		this.replyStatus = replyStatus;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public int getReplyRefNo() {
		return replyRefNo;
	}

	public void setReplyRefNo(int replyRefNo) {
		this.replyRefNo = replyRefNo;
	}

	public String getReplyWriter() {
		return replyWriter;
	}

	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}

	public Date getReplyCreateDate() {
		return replyCreateDate;
	}

	public void setReplyCreateDate(Date replyCreateDate) {
		this.replyCreateDate = replyCreateDate;
	}

	public Date getReplyModifyDate() {
		return replyModifyDate;
	}

	public void setReplyModifyDate(Date replyModifyDate) {
		this.replyModifyDate = replyModifyDate;
	}

	public String getReplyStatus() {
		return replyStatus;
	}

	public void setReplyStatus(String replyStatus) {
		this.replyStatus = replyStatus;
	}

	@Override
	public String toString() {
		return "Reply [replyNo=" + replyNo + ", replyContent=" + replyContent + ", replyRefNo=" + replyRefNo
				+ ", replyWriter=" + replyWriter + ", replyCreateDate=" + replyCreateDate + ", replyModifyDate="
				+ replyModifyDate + ", replyStatus=" + replyStatus + "]";
	};
}
