package com.kh.semi1st.helpCenter.model.vo;

import java.sql.Date;

public class QNA {
	
	private int qnaNo;
	private String qnaWriter;
	private String qnaTitle;
	private String qnaContent;
	private Date qnaCreateDate;
	private Date qnaModifyDate;
	private String qnaAnswerStatus;
	private String qnaStatus;
	
	public QNA() {}

	public QNA(int qnaNo, String qnaWriter, String qnaTitle, String qnaContent, Date qnaCreateDate, Date qnaModifyDate,
			String qnaAnswerStatus, String qnaStatus) {
		super();
		this.qnaNo = qnaNo;
		this.qnaWriter = qnaWriter;
		this.qnaTitle = qnaTitle;
		this.qnaContent = qnaContent;
		this.qnaCreateDate = qnaCreateDate;
		this.qnaModifyDate = qnaModifyDate;
		this.qnaAnswerStatus = qnaAnswerStatus;
		this.qnaStatus = qnaStatus;
	}

	public int getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}

	public String getQnaWriter() {
		return qnaWriter;
	}

	public void setQnaWriter(String qnaWriter) {
		this.qnaWriter = qnaWriter;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaContent() {
		return qnaContent;
	}

	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}

	public Date getQnaCreateDate() {
		return qnaCreateDate;
	}

	public void setQnaCreateDate(Date qnaCreateDate) {
		this.qnaCreateDate = qnaCreateDate;
	}

	public Date getQnaModifyDate() {
		return qnaModifyDate;
	}

	public void setQnaModifyDate(Date qnaModifyDate) {
		this.qnaModifyDate = qnaModifyDate;
	}

	public String getQnaAnswerStatus() {
		return qnaAnswerStatus;
	}

	public void setQnaAnswerStatus(String qnaAnswerStatus) {
		this.qnaAnswerStatus = qnaAnswerStatus;
	}

	public String getQnaStatus() {
		return qnaStatus;
	}

	public void setQnaStatus(String qnaStatus) {
		this.qnaStatus = qnaStatus;
	}

	@Override
	public String toString() {
		return "QNA [qnaNo=" + qnaNo + ", qnaWriter=" + qnaWriter + ", qnaTitle=" + qnaTitle + ", qnaContent="
				+ qnaContent + ", qnaCreateDate=" + qnaCreateDate + ", qnaModifyDate=" + qnaModifyDate
				+ ", qnaAnswerStatus=" + qnaAnswerStatus + ", qnaStatus=" + qnaStatus + "]";
	}
}
