package com.kh.semi1st.project.model.vo;

public class Chat {
	private int chatNo;
	private String chatWriter;
	private int chatProjectNo;
	private String chatContent;
	private String chatCreateDate;
	private String chatStatus;
	private String chatWriterImg;
	
	public Chat() {}

	public Chat(int chatNo, String chatWriter, int chatProjectNo, String chatContent, String chatCreateDate,
			String chatStatus, String chatWriterImg) {
		super();
		this.chatNo = chatNo;
		this.chatWriter = chatWriter;
		this.chatProjectNo = chatProjectNo;
		this.chatContent = chatContent;
		this.chatCreateDate = chatCreateDate;
		this.chatStatus = chatStatus;
		this.chatWriterImg = chatWriterImg;
	}

	public int getChatNo() {
		return chatNo;
	}

	public void setChatNo(int chatNo) {
		this.chatNo = chatNo;
	}

	public String getChatWriter() {
		return chatWriter;
	}

	public void setChatWriter(String chatWriter) {
		this.chatWriter = chatWriter;
	}

	public int getChatProjectNo() {
		return chatProjectNo;
	}

	public void setChatProjectNo(int chatProjectNo) {
		this.chatProjectNo = chatProjectNo;
	}

	public String getChatContent() {
		return chatContent;
	}

	public void setChatContent(String chatContent) {
		this.chatContent = chatContent;
	}

	public String getChatCreateDate() {
		return chatCreateDate;
	}

	public void setChatCreateDate(String chatCreateDate) {
		this.chatCreateDate = chatCreateDate;
	}

	public String getChatStatus() {
		return chatStatus;
	}

	public void setChatStatus(String chatStatus) {
		this.chatStatus = chatStatus;
	}

	public String getChatWriterImg() {
		return chatWriterImg;
	}

	public void setChatWriterImg(String chatWriterImg) {
		this.chatWriterImg = chatWriterImg;
	}

	@Override
	public String toString() {
		return "Chat [chatNo=" + chatNo + ", chatWriter=" + chatWriter + ", chatProjectNo=" + chatProjectNo
				+ ", chatContent=" + chatContent + ", chatCreateDate=" + chatCreateDate + ", chatStatus=" + chatStatus
				+ ", chatWriterImg=" + chatWriterImg + "]";
	}
}
