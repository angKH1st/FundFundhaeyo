package com.kh.semi1st.member.model.vo;

import java.sql.Date;

public class Member {
	
	private int userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private String userSsn;
	private String nickname;
	private String phone;
	private String email;
	private String address;
	private String profile;
	private int grade;
	private String marketing;
	private Date enrollDate;
	private Date modifyDate;
	private String userType;
	private String userStatus;
	
	public Member() {}
	
	public Member(String userId, String userPwd, String userName, String userSsn, String nickname, String phone,
			String email, String address, String marketing) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userSsn = userSsn;
		this.nickname = nickname;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.marketing = marketing;
	}

	public Member(int userNo, String userId, String userPwd, String userName, String userSsn, String nickname,
			String phone, String email, String address, String profile, int grade, String marketing, Date enrollDate,
			Date modifyDate, String userType, String userStatus) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userSsn = userSsn;
		this.nickname = nickname;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.profile = profile;
		this.grade = grade;
		this.marketing = marketing;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.userType = userType;
		this.userStatus = userStatus;
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

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getMarketing() {
		return marketing;
	}

	public void setMarketing(String marketing) {
		this.marketing = marketing;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
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

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", userSsn=" + userSsn + ", nickname=" + nickname + ", phone=" + phone + ", email=" + email
				+ ", address=" + address + ", profile=" + profile + ", grade=" + grade + ", marketing=" + marketing
				+ ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", userType=" + userType
				+ ", userStatus=" + userStatus + "]";
	}

}
