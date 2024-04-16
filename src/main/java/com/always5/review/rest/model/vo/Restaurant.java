package com.always5.review.rest.model.vo;

import java.sql.Date;
import java.util.ArrayList;

import com.always5.common.vo.Attachment;

public class Restaurant {
	
	private int restNo;
	private String restName;
	private String restAddress;
	private String restPhone;
	private String restIntro;
	private String restGrade;
	private String restLikeNo;
	private Date restEnrollDate;
	private Date restModifyDate;
	private String restOperDate;
	private String restStatus;
	private String foodCategoryNo;
	private ArrayList<Attachment> restAtList;
	
	
	public Restaurant() {
		super();
	}


	public Restaurant(int restNo, String restName, String restAddress, String restPhone, String restIntro,
			String restGrade, String restLikeNo, Date restEnrollDate, Date restModifyDate, String restOperDate,
			String restStatus, String foodCategoryNo, ArrayList<Attachment> restAtList) {
		super();
		this.restNo = restNo;
		this.restName = restName;
		this.restAddress = restAddress;
		this.restPhone = restPhone;
		this.restIntro = restIntro;
		this.restGrade = restGrade;
		this.restLikeNo = restLikeNo;
		this.restEnrollDate = restEnrollDate;
		this.restModifyDate = restModifyDate;
		this.restOperDate = restOperDate;
		this.restStatus = restStatus;
		this.foodCategoryNo = foodCategoryNo;
		this.restAtList = restAtList;
	}


	public int getRestNo() {
		return restNo;
	}


	public void setRestNo(int restNo) {
		this.restNo = restNo;
	}


	public String getRestName() {
		return restName;
	}


	public void setRestName(String restName) {
		this.restName = restName;
	}


	public String getRestAddress() {
		return restAddress;
	}


	public void setRestAddress(String restAddress) {
		this.restAddress = restAddress;
	}


	public String getRestPhone() {
		return restPhone;
	}


	public void setRestPhone(String restPhone) {
		this.restPhone = restPhone;
	}


	public String getRestIntro() {
		return restIntro;
	}


	public void setRestIntro(String restIntro) {
		this.restIntro = restIntro;
	}


	public String getRestGrade() {
		return restGrade;
	}


	public void setRestGrade(String restGrade) {
		this.restGrade = restGrade;
	}


	public String getRestLikeNo() {
		return restLikeNo;
	}


	public void setRestLikeNo(String restLikeNo) {
		this.restLikeNo = restLikeNo;
	}


	public Date getRestEnrollDate() {
		return restEnrollDate;
	}


	public void setRestEnrollDate(Date restEnrollDate) {
		this.restEnrollDate = restEnrollDate;
	}


	public Date getRestModifyDate() {
		return restModifyDate;
	}


	public void setRestModifyDate(Date restModifyDate) {
		this.restModifyDate = restModifyDate;
	}


	public String getRestOperDate() {
		return restOperDate;
	}


	public void setRestOperDate(String restOperDate) {
		this.restOperDate = restOperDate;
	}


	public String getRestStatus() {
		return restStatus;
	}


	public void setRestStatus(String restStatus) {
		this.restStatus = restStatus;
	}


	public String getFoodCategoryNo() {
		return foodCategoryNo;
	}


	public void setFoodCategoryNo(String foodCategoryNo) {
		this.foodCategoryNo = foodCategoryNo;
	}


	public ArrayList<Attachment> getRestAtList(){
		return restAtList;
	}
	
	public void setRestAtList(ArrayList<Attachment> restAtList) {
		this.restAtList = restAtList;
	}


	@Override
	public String toString() {
		return "Restaurant [restNo=" + restNo + ", restName=" + restName + ", restAddress=" + restAddress
				+ ", restPhone=" + restPhone + ", restIntro=" + restIntro + ", restGrade=" + restGrade + ", restLikeNo="
				+ restLikeNo + ", restEnrollDate=" + restEnrollDate + ", restModifyDate=" + restModifyDate
				+ ", restOperDate=" + restOperDate + ", restStatus=" + restStatus + ", foodCategoryNo=" + foodCategoryNo
				+ ", restAtList=" + restAtList + "]";
	}

	
}
	