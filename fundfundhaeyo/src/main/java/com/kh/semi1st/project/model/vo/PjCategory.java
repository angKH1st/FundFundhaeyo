package com.kh.semi1st.project.model.vo;

public class PjCategory {
	
	private int pjCategoryNo;
	private String pjCategoryName;
	private int pjFunding;
	
	public PjCategory() {}
	
	public int getPjFunding() {
		return pjFunding;
	}

	public void setPjFunding(int pjFunding) {
		this.pjFunding = pjFunding;
	}

	public PjCategory(int pjCategoryNo, String pjCategoryName, int pjFunding) {
		super();
		this.pjCategoryNo = pjCategoryNo;
		this.pjCategoryName = pjCategoryName;
		this.pjFunding = pjFunding;
	}

	public PjCategory(int pjCategoryNo, String pjCategoryName) {
		super();
		this.pjCategoryNo = pjCategoryNo;
		this.pjCategoryName = pjCategoryName;
	}

	public int getPjCategoryNo() {
		return pjCategoryNo;
	}

	public void setPjCategoryNo(int pjCategoryNo) {
		this.pjCategoryNo = pjCategoryNo;
	}

	public String getPjCategoryName() {
		return pjCategoryName;
	}

	public void setPjCategoryName(String pjCategoryName) {
		this.pjCategoryName = pjCategoryName;
	}

	@Override
	public String toString() {
		return "PjCategory [pjCategoryNo=" + pjCategoryNo + ", pjCategoryName=" + pjCategoryName + "]";
	}
	
}
