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

	
}
	

