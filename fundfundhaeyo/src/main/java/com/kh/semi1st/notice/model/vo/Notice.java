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
	private int noticeAnnouncementNo;
	private int noticeProjectNo;
	private int noticeQnaNo;
	private String noticeImg;
	
	public Notice () {}

	public Notice(int noticeNo, String noticeTitle, String noticeContent, String noticeWriter, String noticeCreateDate,
			int noticeType, String noticeStatus, int noticeReceiverNo, int noticeAnnouncementNo, int noticeProjectNo,
			int noticeQnaNo, String noticeImg) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeWriter = noticeWriter;
		this.noticeCreateDate = noticeCreateDate;
		this.noticeType = noticeType;
		this.noticeStatus = noticeStatus;
		this.noticeReceiverNo = noticeReceiverNo;
		this.noticeAnnouncementNo = noticeAnnouncementNo;
		this.noticeProjectNo = noticeProjectNo;
		this.noticeQnaNo = noticeQnaNo;
		this.noticeImg = noticeImg;
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

	public int getNoticeAnnouncementNo() {
		return noticeAnnouncementNo;
	}

	public void setNoticeAnnouncementNo(int noticeAnnouncementNo) {
		this.noticeAnnouncementNo = noticeAnnouncementNo;
	}

	public int getNoticeProjectNo() {
		return noticeProjectNo;
	}

	public void setNoticeProjectNo(int noticeProjectNo) {
		this.noticeProjectNo = noticeProjectNo;
	}

	public int getNoticeQnaNo() {
		return noticeQnaNo;
	}

	public void setNoticeQnaNo(int noticeQnaNo) {
		this.noticeQnaNo = noticeQnaNo;
	}

	public String getNoticeImg() {
		return noticeImg;
	}

	public void setNoticeImg(String noticeImg) {
		this.noticeImg = noticeImg;
	}

	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent
				+ ", noticeWriter=" + noticeWriter + ", noticeCreateDate=" + noticeCreateDate + ", noticeType="
				+ noticeType + ", noticeStatus=" + noticeStatus + ", noticeReceiverNo=" + noticeReceiverNo
				+ ", noticeAnnouncementNo=" + noticeAnnouncementNo + ", noticeProjectNo=" + noticeProjectNo
				+ ", noticeQnaNo=" + noticeQnaNo + ", noticeImg=" + noticeImg + "]";
	}
}
