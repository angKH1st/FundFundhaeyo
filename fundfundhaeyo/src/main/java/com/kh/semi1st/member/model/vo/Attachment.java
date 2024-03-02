package com.kh.semi1st.member.model.vo;

import java.sql.Date;

public class Attachment {

	private int attachmentNo;
	private int attachmentUserNo;
	private String attachmentOriginName;
	private String attachmentUpdateName;
	private String attachmentPath;
	private Date attachmentUploadDate;
	private int attachmentLevel;
	private String attachmentStatus;
	
	public Attachment() {}

	public Attachment(int attachmentNo, int attachmentUserNo, String attachmentOriginName, String attachmentUpdateName,
			String attachmentPath, Date attachmentUploadDate, int attachmentLevel, String attachmentStatus) {
		super();
		this.attachmentNo = attachmentNo;
		this.attachmentUserNo = attachmentUserNo;
		this.attachmentOriginName = attachmentOriginName;
		this.attachmentUpdateName = attachmentUpdateName;
		this.attachmentPath = attachmentPath;
		this.attachmentUploadDate = attachmentUploadDate;
		this.attachmentLevel = attachmentLevel;
		this.attachmentStatus = attachmentStatus;
	}

	public int getAttachmentNo() {
		return attachmentNo;
	}

	public void setAttachmentNo(int attachmentNo) {
		this.attachmentNo = attachmentNo;
	}

	public int getAttachmentUserNo() {
		return attachmentUserNo;
	}

	public void setAttachmentUserNo(int attachmentUserNo) {
		this.attachmentUserNo = attachmentUserNo;
	}

	public String getAttachmentOriginName() {
		return attachmentOriginName;
	}

	public void setAttachmentOriginName(String attachmentOriginName) {
		this.attachmentOriginName = attachmentOriginName;
	}

	public String getAttachmentUpdateName() {
		return attachmentUpdateName;
	}

	public void setAttachmentUpdateName(String attachmentUpdateName) {
		this.attachmentUpdateName = attachmentUpdateName;
	}

	public String getAttachmentPath() {
		return attachmentPath;
	}

	public void setAttachmentPath(String attachmentPath) {
		this.attachmentPath = attachmentPath;
	}

	public Date getAttachmentUploadDate() {
		return attachmentUploadDate;
	}

	public void setAttachmentUploadDate(Date attachmentUploadDate) {
		this.attachmentUploadDate = attachmentUploadDate;
	}

	public int getAttachmentLevel() {
		return attachmentLevel;
	}

	public void setAttachmentLevel(int attachmentLevel) {
		this.attachmentLevel = attachmentLevel;
	}

	public String getAttachmentStatus() {
		return attachmentStatus;
	}

	public void setAttachmentStatus(String attachmentStatus) {
		this.attachmentStatus = attachmentStatus;
	}

	@Override
	public String toString() {
		return "Attachment [attachmentNo=" + attachmentNo + ", attachmentUserNo=" + attachmentUserNo
				+ ", attachmentOriginName=" + attachmentOriginName + ", attachmentUpdateName=" + attachmentUpdateName
				+ ", attachmentPath=" + attachmentPath + ", attachmentUploadDate=" + attachmentUploadDate
				+ ", attachmentLevel=" + attachmentLevel + ", attachmentStatus=" + attachmentStatus + "]";
	}

}
