package com.kh.semi1st.member.model.vo;

import java.sql.Date;

public class Member {
	
	private int userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private String userSsn;
	private String userNickname;
	private String userPhone;
	private String userEmail;
	private String userAddress;
	private String userProfile;
	private int userGrade;
	private String userMarketing;
	private Date userEnrollDate;
	private Date userModifyDate;
	private String userType;
	private String userStatus;
	
	private String userImg;
	
	private int sellerCount;
	private int sellerFunding;
	private int buyerCount;
	private int buyerFunding;
	
	public int getSellerCount() {
		return sellerCount;
	}

	public void setSellerCount(int sellerCount) {
		this.sellerCount = sellerCount;
	}

	public int getSellerFunding() {
		return sellerFunding;
	}

	public void setSellerFunding(int sellerFunding) {
		this.sellerFunding = sellerFunding;
	}

	public int getBuyerCount() {
		return buyerCount;
	}

	public void setBuyerCount(int buyerCount) {
		this.buyerCount = buyerCount;
	}

	public int getBuyerFunding() {
		return buyerFunding;
	}

	public void setBuyerFunding(int buyerFunding) {
		this.buyerFunding = buyerFunding;
	}

	public Member() {}

	public Member(String userId, String userPwd, String userName, String userSsn, String userNickname, String userPhone,
			String userEmail, String userAddress, String userMarketing) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userSsn = userSsn;
		this.userNickname = userNickname;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userAddress = userAddress;
		this.userMarketing = userMarketing;
	}

	public Member(int userNo, String userId, String userPwd, String userName, String userSsn, String userNickname,
			String userPhone, String userEmail, String userAddress, String userProfile, int userGrade,
			String userMarketing, Date userEnrollDate, Date userModifyDate, String userType, String userStatus, String userImg) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userSsn = userSsn;
		this.userNickname = userNickname;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userAddress = userAddress;
		this.userProfile = userProfile;
		this.userGrade = userGrade;
		this.userMarketing = userMarketing;
		this.userEnrollDate = userEnrollDate;
		this.userModifyDate = userModifyDate;
		this.userType = userType;
		this.userStatus = userStatus;
		this.userImg = userImg;
	}

	public Member(String userId, String userPwd, String userName, String userSsn, String userNickname,
			String userPhone, String userEmail, String userAddress) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userSsn = userSsn;
		this.userNickname = userNickname;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userAddress = userAddress;
	}

	public Member(String userId) {
		super();
		this.userId = userId;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserSsn() {
		return userSsn;
	}

	public void setUserSsn(String userSsn) {
		this.userSsn = userSsn;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserProfile() {
		return userProfile;
	}

	public void setUserProfile(String userProfile) {
		this.userProfile = userProfile;
	}

	public int getUserGrade() {
		return userGrade;
	}

	public void setUserGrade(int userGrade) {
		this.userGrade = userGrade;
	}

	public String getUserMarketing() {
		return userMarketing;
	}

	public void setUserMarketing(String userMarketing) {
		this.userMarketing = userMarketing;
	}

	public Date getUserEnrollDate() {
		return userEnrollDate;
	}

	public void setUserEnrollDate(Date userEnrollDate) {
		this.userEnrollDate = userEnrollDate;
	}

	public Date getUserModifyDate() {
		return userModifyDate;
	}

	public void setUserModifyDate(Date userModifyDate) {
		this.userModifyDate = userModifyDate;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}
	
	public String getUserImg() {
		return userImg;
	}
	
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", userSsn=" + userSsn + ", userNickname=" + userNickname + ", userPhone=" + userPhone
				+ ", userEmail=" + userEmail + ", userAddress=" + userAddress + ", userProfile=" + userProfile
				+ ", userGrade=" + userGrade + ", userMarketing=" + userMarketing + ", userEnrollDate=" + userEnrollDate
				+ ", userModifyDate=" + userModifyDate + ", userType=" + userType + ", userStatus=" + userStatus + "]";
	}

}
