package com.always5.user.model.vo;

import java.util.Date;

public class User {
	private int userNo;
	private String authority;
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
	private Date userEnrollDate;
	private Date userModifyDate;
	private String userStatus;
	private int point;

	public User() {
		super();
	}

	public User(int userNo, String authority, String userId, String userPwd, String updatePwd, String updateId,
			String userName, String nickName, String userBirth, String userGender, String userPhone, String userEmail,
			String userAddress, Date userEnrollDate, Date userModifyDate, String userStatus, int point) {
		super();
		this.userNo = userNo;
		this.authority = authority;
		this.userId = userId;
		this.userPwd = userPwd;
		this.updatePwd = updatePwd;
		this.updateId = updateId;
		this.userName = userName;
		this.nickName = nickName;
		this.userBirth = userBirth;
		this.userGender = userGender;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userAddress = userAddress;
		this.userEnrollDate = userEnrollDate;
		this.userModifyDate = userModifyDate;
		this.userStatus = userStatus;
		this.point = point;
	}

	public User(String authority, String userId, String userPwd, String userName, String nickName,
			String userBirth, String userGender, String userPhone, String userAddress) {
		super();
		this.authority = authority;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.nickName = nickName;
		this.userBirth = userBirth;
		this.userGender = userGender;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
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

	public String getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	@Override
	public String toString() {
		return "User [userNo=" + userNo + ", authority=" + authority + ", userId=" + userId + ", userPwd=" + userPwd
				+ ", updatePwd=" + updatePwd + ", updateId=" + updateId + ", userName=" + userName + ", nickName="
				+ nickName + ", userBirth=" + userBirth + ", userGender=" + userGender + ", userPhone=" + userPhone
				+ ", userEmail=" + userEmail + ", userAddress=" + userAddress + ", userEnrollDate=" + userEnrollDate
				+ ", userModifyDate=" + userModifyDate + ", userStatus=" + userStatus + ", point=" + point + "]";
	}
}


