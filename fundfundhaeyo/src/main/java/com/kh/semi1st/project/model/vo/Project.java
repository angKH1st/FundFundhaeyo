package com.kh.semi1st.project.model.vo;

import java.util.Date;

public class Project {

	private int projectNo;
	private String projectSeller;
	private String projectCategoryName;
	private String projectOverview;
	private String projectTitle;
	private String projectContent;
	private String projectTag;
	private int projectPrice;
	private Date projectStart;
	private Date projectEnd;
	private Date projectPaymentBuyer;
	private Date projectPaymentSeller;
	private String projectStatus;
	
	private int projectSellerFunding;
	private int projectCategoryNo;
	private String projectTitleImg;
	private int projectFunding;
	
	public int getProjectSellerFunding() {
		return projectSellerFunding;
	}
	
	public void setProjectSellerFunding(int projectSellerFunding) {
		this.projectSellerFunding = projectSellerFunding;
	}
	
	public int getProjectFunding() {
		return projectFunding;
	}

	public void setProjectFunding(int projectFunding) {
		this.projectFunding = projectFunding;
	}

	public Project(int projectNo, String projectSeller, String projectCategoryName, String projectOverview,
			String projectTitle, String projectContent, String projectTag, int projectPrice, Date projectStart,
			Date projectEnd, Date projectPaymentBuyer, Date projectPaymentSeller, String projectStatus,
			String projectTitleImg, int projectFunding) {
		super();
		this.projectNo = projectNo;
		this.projectSeller = projectSeller;
		this.projectCategoryName = projectCategoryName;
		this.projectOverview = projectOverview;
		this.projectTitle = projectTitle;
		this.projectContent = projectContent;
		this.projectTag = projectTag;
		this.projectPrice = projectPrice;
		this.projectStart = projectStart;
		this.projectEnd = projectEnd;
		this.projectPaymentBuyer = projectPaymentBuyer;
		this.projectPaymentSeller = projectPaymentSeller;
		this.projectStatus = projectStatus;
		this.projectTitleImg = projectTitleImg;
		this.projectFunding = projectFunding;
	}

	public Project() {}

	public Project(int projectNo, String projectSeller, String projectCategoryName, String projectOverview,
			String projectTitle, String projectContent, String projectTag, int projectPrice, Date projectStart,
			Date projectEnd, Date projectPaymentBuyer, Date projectPaymentSeller, String projectStatus) {
		super();
		this.projectNo = projectNo;
		this.projectSeller = projectSeller;
		this.projectCategoryName = projectCategoryName;
		this.projectOverview = projectOverview;
		this.projectTitle = projectTitle;
		this.projectContent = projectContent;
		this.projectTag = projectTag;
		this.projectPrice = projectPrice;
		this.projectStart = projectStart;
		this.projectEnd = projectEnd;
		this.projectPaymentBuyer = projectPaymentBuyer;
		this.projectPaymentSeller = projectPaymentSeller;
		this.projectStatus = projectStatus;
	}

	public int getProjectCategoryNo() {
		return projectCategoryNo;
	}
	
	public void setProjectCategoryNo(int projectCategoryNo) {
		this.projectCategoryNo = projectCategoryNo;
	}
	
	public String getProjectTitleImg() {
		return projectTitleImg;
	}

	public void setProjectTitleImg(String projectTitleImg) {
		this.projectTitleImg = projectTitleImg;
	}

	public Project(int projectNo, String projectSeller, String projectCategoryName, String projectOverview,
			String projectTitle, String projectContent, String projectTag, int projectPrice, Date projectStart,
			Date projectEnd, Date projectPaymentBuyer, Date projectPaymentSeller, String projectStatus,
			String projectTitleImg) {
		super();
		this.projectNo = projectNo;
		this.projectSeller = projectSeller;
		this.projectCategoryName = projectCategoryName;
		this.projectOverview = projectOverview;
		this.projectTitle = projectTitle;
		this.projectContent = projectContent;
		this.projectTag = projectTag;
		this.projectPrice = projectPrice;
		this.projectStart = projectStart;
		this.projectEnd = projectEnd;
		this.projectPaymentBuyer = projectPaymentBuyer;
		this.projectPaymentSeller = projectPaymentSeller;
		this.projectStatus = projectStatus;
		this.projectTitleImg = projectTitleImg;
	}

	public int getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}

	public String getProjectSeller() {
		return projectSeller;
	}

	public void setProjectSeller(String projectSeller) {
		this.projectSeller = projectSeller;
	}

	public String getProjectCategoryName() {
		return projectCategoryName;
	}

	public void setProjectCategoryName(String projectCategoryNo) {
		this.projectCategoryName = projectCategoryNo;
	}

	public String getProjectOverview() {
		return projectOverview;
	}

	public void setProjectOverview(String projectOverview) {
		this.projectOverview = projectOverview;
	}

	public String getProjectTitle() {
		return projectTitle;
	}

	public void setProjectTitle(String projectTitle) {
		this.projectTitle = projectTitle;
	}

	public String getProjectContent() {
		return projectContent;
	}

	public void setProjectContent(String projectContent) {
		this.projectContent = projectContent;
	}

	public String getProjectTag() {
		return projectTag;
	}

	public void setProjectTag(String projectTag) {
		this.projectTag = projectTag;
	}

	public int getProjectPrice() {
		return projectPrice;
	}

	public void setProjectPrice(int projectPrice) {
		this.projectPrice = projectPrice;
	}

	public Date getProjectStart() {
		return projectStart;
	}

	public void setProjectStart(Date projectStart) {
		this.projectStart = projectStart;
	}

	public Date getProjectEnd() {
		return projectEnd;
	}

	public void setProjectEnd(Date projectEnd) {
		this.projectEnd = projectEnd;
	}

	public Date getProjectPaymentBuyer() {
		return projectPaymentBuyer;
	}

	public void setProjectPaymentBuyer(Date projectPaymentBuyer) {
		this.projectPaymentBuyer = projectPaymentBuyer;
	}

	public Date getProjectPaymentSeller() {
		return projectPaymentSeller;
	}

	public void setProjectPaymentSeller(Date projectPaymentSeller) {
		this.projectPaymentSeller = projectPaymentSeller;
	}

	public String getProjectStatus() {
		return projectStatus;
	}

	public void setProjectStatus(String projectStatus) {
		this.projectStatus = projectStatus;
	}

	@Override
	public String toString() {
		return "Project [projectNo=" + projectNo + ", projectSeller=" + projectSeller + ", projectCategoryName="
				+ projectCategoryName + ", projectOverview=" + projectOverview + ", projectTitle=" + projectTitle
				+ ", projectContent=" + projectContent + ", projectTag=" + projectTag + ", projectPrice=" + projectPrice
				+ ", projectStart=" + projectStart + ", projectEnd=" + projectEnd + ", projectPaymentBuyer="
				+ projectPaymentBuyer + ", projectPaymentSeller=" + projectPaymentSeller + ", projectStatus="
				+ projectStatus + "]";
	}
}
