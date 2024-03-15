package com.kh.semi1st.notice.model.vo;

public class Notice {
	
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private String noticeWriter;
	private String noticeCreateDate;
	private int noticeType;
	private String noticeStatus;
	private int noticeReceiverNo;
	
	public Notice () {}

	public Notice(int noticeNo, String noticeTitle, String noticeContent, String noticeWriter, String noticeCreateDate,
			int noticeType, String noticeStatus, int noticeReceiverNo) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeWriter = noticeWriter;
		this.noticeCreateDate = noticeCreateDate;
		this.noticeType = noticeType;
		this.noticeStatus = noticeStatus;
		this.noticeReceiverNo = noticeReceiverNo;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public String getNoticeWriter() {
		return noticeWriter;
	}

	public void setNoticeWriter(String noticeWriter) {
		this.noticeWriter = noticeWriter;
	}

	public String getNoticeCreateDate() {
		return noticeCreateDate;
	}

	public void setNoticeCreateDate(String noticeCreateDate) {
		this.noticeCreateDate = noticeCreateDate;
	}

	public int getNoticeType() {
		return noticeType;
	}

	public void setNoticeType(int noticeType) {
		this.noticeType = noticeType;
	}

	public String getNoticeStatus() {
		return noticeStatus;
	}

	public void setNoticeStatus(String noticeStatus) {
		this.noticeStatus = noticeStatus;
	}

	public int getNoticeReceiverNo() {
		return noticeReceiverNo;
	}

	public void setNoticeReceiverNo(int noticeReceiverNo) {
		this.noticeReceiverNo = noticeReceiverNo;
	}

	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent
				+ ", noticeWriter=" + noticeWriter + ", noticeCreateDate=" + noticeCreateDate + ", noticeType="
				+ noticeType + ", noticeStatus=" + noticeStatus + ", noticeReceiverNo=" + noticeReceiverNo + "]";
	}
}
