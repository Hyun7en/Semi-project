package com.always5.user.model.vo;

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
	private String point;
	private String authority;
	private String status;
	private String enrollDate;
	
	public User() {
        super();
    }
	
	public User(String userId) {
		super();
		this.userId = userId;
	}
	
	public User(String userId, String userPwd, String updatePwd) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.updatePwd = updatePwd;
	}
	
	public User(String userId, String userPwd) {
		super();
        this.userId = userId;
        this.userPwd = userPwd;
    }
	
	public User(String userId, String userPwd, String userName, String nickName, String userBirth, String userGender,
			String userPhone, String userEmail, String userAddress) {
        super();
        this.userId = userId;
        this.userPwd = userPwd;
        this.userName = userName;
        this.nickName = nickName;
        this.userBirth = userBirth;
        this.userGender = userGender;
        this.userPhone = userPhone;
        this.userEmail = userEmail;
        this.userAddress = userAddress;
    }
	
	public User(String authority, String userId, String userPwd, String userName, String nickName, String userBirth,
			String userGender, String userPhone, String userEmail, String userAddress, String point) {
        super();
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
        this.point = point;
    }
	
	public User(int userNo, String userId, String userPwd, String userName, String nickName, String userBirth,
			String userGender, String userPhone, String userEmail, String userAddress, String point, String authority,
            String status, String enrollDate) {
        super();
        this.userNo = userNo;
        this.userId = userId;
        this.userPwd = userPwd;
        this.userName = userName;
        this.nickName = nickName;
        this.userBirth = userBirth;
        this.userGender = userGender;
        this.userPhone = userPhone;
        this.userEmail = userEmail;
        this.userAddress = userAddress;
        this.point = point;
        this.authority = authority;
        this.status = status;
        this.enrollDate = enrollDate;
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
    
    public String getPoint() {
        return point;
    }
    
    public void setPoint(String point) {
        this.point = point;
    }
    
    public String getAuthority() {
        return authority;
    }
    
    public void setAuthority(String authority) {
        this.authority = authority;
    }
    
    public String getStatus() {
        return status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    
    public String getEnrollDate() {
        return enrollDate;
    }
    
	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}
	
	
	
	@Override
	public String toString() {
		return "User [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", nickName=" + nickName + ", userBirth=" + userBirth + ", userGender=" + userGender + ", userPhone="
				+ userPhone + ", userEmail=" + userEmail + ", userAddress=" + userAddress + ", point=" + point
				+ ", authority=" + authority + ", status=" + status + ", enrollDate=" + enrollDate + "]";

	}
}
	

