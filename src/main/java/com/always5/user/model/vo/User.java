package com.always5.user.model.vo;

import java.util.Date;

public class User {
	private int userNo;
	private String authority;
	private String userId;
	private String userPwd;
	private String updatePwd;
	private String updateId;
	private String updateName;
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

	public User(String userId) {
		super();
		this.userId = userId;
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
	
	public User(String userId, String userPwd) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
	}

	public String getAuthority() {
		return authority;
	}

	public String getNickName() {
		return nickName;
	}

	public int getPoint() {
		return point;
	}

	public String getUpdateId() {
		return updateId;
	}

	public String getUpdateName() {
		return updateName;
	}

	public String getUpdatePwd() {
		return updatePwd;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public String getUserBirth() {
		return userBirth;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public Date getUserEnrollDate() {
		return userEnrollDate;
	}

	public String getUserGender() {
		return userGender;
	}

	public String getUserId() {
		return userId;
	}

	public Date getUserModifyDate() {
		return userModifyDate;
	}

	public String getUserName() {
		return userName;
	}

	public int getUserNo() {
		return userNo;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public String getUserStatus() {
		return userStatus;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public void setUpdateId(String updateId) {
		this.updateId = updateId;
	}

	public void setUpdateName(String updateName) {
		this.updateName = updateName;
	}

	public void setUpdatePwd(String updatePwd) {
		this.updatePwd = updatePwd;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public void setUserEnrollDate(Date userEnrollDate) {
		this.userEnrollDate = userEnrollDate;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public void setUserModifyDate(Date userModifyDate) {
		this.userModifyDate = userModifyDate;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	
	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

	@Override
	public String toString() {
		return "User [userNo=" + userNo + ", authority=" + authority + ", userId=" + userId + ", userPwd=" + userPwd
				+ ", updatePwd=" + updatePwd + ", updateId=" + updateId + ", updateName=" + updateName + ", userName="
				+ userName + ", nickName=" + nickName + ", userBirth=" + userBirth + ", userGender=" + userGender
				+ ", userPhone=" + userPhone + ", userEmail=" + userEmail + ", userAddress=" + userAddress
				+ ", userEnrollDate=" + userEnrollDate + ", userModifyDate=" + userModifyDate + ", userStatus="
				+ userStatus + ", point=" + point + "]";
	}
}


