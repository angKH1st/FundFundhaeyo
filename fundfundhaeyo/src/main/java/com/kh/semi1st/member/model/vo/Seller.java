package com.kh.semi1st.member.model.vo;

public class Seller {
	
	private int sellerUserNo;
	private int sellerProjectNo;
	private String pjCategoryName;
	private String projectTag;
	private String projectTitle;
	private int projectPrice;
	private int sellerFunding;
	private int funding;
	private String projectImg;
	
	public Seller () {}

	public Seller(int sellerUserNo, int sellerProjectNo, String pjCategoryName, String projectTag, String projectTitle,
			int projectPrice, int sellerFunding, int funding, String projectImg) {
		super();
		this.sellerUserNo = sellerUserNo;
		this.sellerProjectNo = sellerProjectNo;
		this.pjCategoryName = pjCategoryName;
		this.projectTag = projectTag;
		this.projectTitle = projectTitle;
		this.projectPrice = projectPrice;
		this.sellerFunding = sellerFunding;
		this.funding = funding;
		this.projectImg = projectImg;
	}

	public int getSellerUserNo() {
		return sellerUserNo;
	}

	public void setSellerUserNo(int sellerUserNo) {
		this.sellerUserNo = sellerUserNo;
	}

	public int getSellerProjectNo() {
		return sellerProjectNo;
	}

	public void setSellerProjectNo(int sellerProjectNo) {
		this.sellerProjectNo = sellerProjectNo;
	}

	public String getPjCategoryName() {
		return pjCategoryName;
	}

	public void setPjCategoryName(String pjCategoryName) {
		this.pjCategoryName = pjCategoryName;
	}

	public String getProjectTag() {
		return projectTag;
	}

	public void setProjectTag(String projectTag) {
		this.projectTag = projectTag;
	}

	public String getProjectTitle() {
		return projectTitle;
	}

	public void setProjectTitle(String projectTitle) {
		this.projectTitle = projectTitle;
	}

	public int getProjectPrice() {
		return projectPrice;
	}

	public void setProjectPrice(int projectPrice) {
		this.projectPrice = projectPrice;
	}

	public int getSellerFunding() {
		return sellerFunding;
	}

	public void setSellerFunding(int sellerFunding) {
		this.sellerFunding = sellerFunding;
	}

	public int getFunding() {
		return funding;
	}

	public void setFunding(int funding) {
		this.funding = funding;
	}

	public String getProjectImg() {
		return projectImg;
	}

	public void setProjectImg(String projectImg) {
		this.projectImg = projectImg;
	}

	@Override
	public String toString() {
		return "Seller [sellerUserNo=" + sellerUserNo + ", sellerProjectNo=" + sellerProjectNo + ", pjCategoryName="
				+ pjCategoryName + ", projectTag=" + projectTag + ", projectTitle=" + projectTitle + ", projectPrice="
				+ projectPrice + ", sellerFunding=" + sellerFunding + ", funding=" + funding + ", projectImg="
				+ projectImg + "]";
	}
}
