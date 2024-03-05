package com.kh.semi1st.project.model.vo;

public class PjCategory {
	
	private int pjCategoryNo;
	private String pjCategoryName;
	
	public PjCategory() {}

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
