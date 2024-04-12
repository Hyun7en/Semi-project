package com.always5.user.model.vo;

import java.sql.Date;

public class User {
	private int userNo;
	private String authority;
	private String userId;
	private String userPwd;
	private String userName;
	private String nickName;
	private Date userBirth;
	private String userGender;
	private String userPhone;
	private String userEmail;
	private String userAddress;
	private Date enrollDate;
	private Date modifyDate;
	private String status;
	private String point;
	
	public User() {
		super();
	}

	public User(int userNo, String authority, String userId, String userPwd, String userName, String nickName,
			Date userBirth, String userGender, String userPhone, String userEmail, String userAddress, Date enrollDate,
			Date modifyDate, String status, String point) {
		super();
		this.userNo = userNo;
		this.authority = authority;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.nickName = nickName;
		this.userBirth = userBirth;
		this.userGender = userGender;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userAddress = userAddress;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.status = status;
		this.point = point;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
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

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public Date getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(Date userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
	}

	@Override
	public String toString() {
		return "User [userNo=" + userNo + ", authority=" + authority + ", userId=" + userId + ", userPwd=" + userPwd
				+ ", userName=" + userName + ", nickName=" + nickName + ", userBirth=" + userBirth + ", userGender="
				+ userGender + ", userPhone=" + userPhone + ", userEmail=" + userEmail + ", userAddress=" + userAddress
				+ ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", status=" + status + ", point="
				+ point + "]";
	}	
}
