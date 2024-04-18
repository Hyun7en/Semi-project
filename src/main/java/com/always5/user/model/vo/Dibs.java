package com.always5.user.model.vo;

public class Dibs {
	private String userNo;
	private String restNo;
	
	public Dibs() {
		super();
	}

	public Dibs(String userNo, String restNo) {
		super();
		this.userNo = userNo;
		this.restNo = restNo;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getRestNo() {
		return restNo;
	}

	public void setRestNo(String restNo) {
		this.restNo = restNo;
	}

	@Override
	public String toString() {
		return "Dibs [userNo=" + userNo + ", restNo=" + restNo + "]";
	}
	
	

}
