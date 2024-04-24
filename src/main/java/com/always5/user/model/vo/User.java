package com.always5.user.model.vo;

import java.util.Date;

public class User {
	private int userNo;
	private String Authority;
	private String userId;
	private String userPwd;
	private String updatePwd;
	private String updateId;
	private String userName;
	private String nickName;
	private String userBirth;
	private String userGender;
	private String userPhone;
	private String userEmail;
	private String userAddress;
	private Date enrollDate;
	private Date modifyDate;
	private String status;
	private int point;
	
	public User() {
		super();
	}
	
	public User(String authority, String userId, String userPwd, String nickName, String userName, String userBirth, String userGender, String userPhone,
			String userAddress) {
		super();
		this.Authority = authority;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.nickName = nickName;
		this.userBirth = userBirth;
		this.userGender = userGender;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
	}
	
	public User(String userId, String userPwd) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
	public String getAuthority() {
		return Authority;
	}

	public void setAuthority(String authority) {
		Authority = authority;
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

	public String getUpdatePwd() {
		return updatePwd;
	}

	public void setUpdatePwd(String updatePwd) {
		this.updatePwd = updatePwd;
	}

	public String getUpdateId() {
		return updateId;
	}

	public void setUpdateId(String updateId) {
		this.updateId = updateId;
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

	public String getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(String userBirth) {
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




	public int getPoint() {
		return point;
	}




	public void setPoint(int point) {
		this.point = point;
	}




	@Override
	public String toString() {
		return "User [userNo=" + userNo + ", Authority=" + Authority + ", userId=" + userId + ", userPwd=" + userPwd
				+ ", updatePwd=" + updatePwd + ", updateId=" + updateId + ", userName=" + userName + ", nickName="
				+ nickName + ", userBirth=" + userBirth + ", userGender=" + userGender + ", userPhone=" + userPhone
				+ ", userEmail=" + userEmail + ", userAddress=" + userAddress + ", enrollDate=" + enrollDate
				+ ", modifyDate=" + modifyDate + ", status=" + status + ", point=" + point + "]";
	}
}
	

