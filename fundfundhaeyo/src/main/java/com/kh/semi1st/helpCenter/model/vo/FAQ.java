package com.kh.semi1st.helpCenter.model.vo;

import java.sql.Date;

public class FAQ {

	private int fAQNo;
	private String fAQTitle;
	private String fAQContent;
	private String fAQWriter;
	private int fAQCount;
	private Date fAQCreateDate;
	private Date fAQModifyDate;
	private String fAQStatus;
	
	public FAQ() {}

	public FAQ(int fAQNo, String fAQTitle, String fAQContent, String fAQWriter, int fAQCount, Date fAQCreateDate,
			Date fAQModifyDate, String fAQStatus) {
		super();
		this.fAQNo = fAQNo;
		this.fAQTitle = fAQTitle;
		this.fAQContent = fAQContent;
		this.fAQWriter = fAQWriter;
		this.fAQCount = fAQCount;
		this.fAQCreateDate = fAQCreateDate;
		this.fAQModifyDate = fAQModifyDate;
		this.fAQStatus = fAQStatus;
	}

	public FAQ(int fAQNo, String fAQTitle, String fAQContent, Date fAQModifyDate) {
		super();
		this.fAQNo = fAQNo;
		this.fAQTitle = fAQTitle;
		this.fAQContent = fAQContent;
		this.fAQModifyDate = fAQModifyDate;
	}

	public int getfAQNo() {
		return fAQNo;
	}

	public void setfAQNo(int fAQNo) {
		this.fAQNo = fAQNo;
	}

	public String getfAQTitle() {
		return fAQTitle;
	}

	public void setfAQTitle(String fAQTitle) {
		this.fAQTitle = fAQTitle;
	}

	public String getfAQContent() {
		return fAQContent;
	}

	public void setfAQContent(String fAQContent) {
		this.fAQContent = fAQContent;
	}

	public String getfAQWriter() {
		return fAQWriter;
	}

	public void setfAQWriter(String fAQWriter) {
		this.fAQWriter = fAQWriter;
	}

	public int getfAQCount() {
		return fAQCount;
	}

	public void setfAQCount(int fAQCount) {
		this.fAQCount = fAQCount;
	}

	public Date getfAQCreateDate() {
		return fAQCreateDate;
	}

	public void setfAQCreateDate(Date fAQCreateDate) {
		this.fAQCreateDate = fAQCreateDate;
	}

	public Date getfAQModifyDate() {
		return fAQModifyDate;
	}

	public void setfAQModifyDate(Date fAQModifyDate) {
		this.fAQModifyDate = fAQModifyDate;
	}

	public String getfAQStatus() {
		return fAQStatus;
	}

	public void setfAQStatus(String fAQStatus) {
		this.fAQStatus = fAQStatus;
	}

	@Override
	public String toString() {
		return "FAQ [fAQNo=" + fAQNo + ", fAQTitle=" + fAQTitle + ", fAQContent=" + fAQContent + ", fAQWriter="
				+ fAQWriter + ", fAQCount=" + fAQCount + ", fAQCreateDate=" + fAQCreateDate + ", fAQModifyDate="
				+ fAQModifyDate + ", fAQStatus=" + fAQStatus + "]";
	}
	
	
}
