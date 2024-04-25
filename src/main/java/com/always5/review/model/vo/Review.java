package com.always5.review.model.vo;

import java.sql.Date;
import java.util.ArrayList;

import com.always5.common.vo.Attachment;

public class Review {
	private int reviewNo;
	private String reviewRating; // 별점
	private String reviewContent; // 내용
	private String reviewEnrollDate; // 등록일
	private String reviewModifyDate; // 수정일
	private String status; // 상태
	private String restNo; // 가게 번호
	private String userNo; // 회원 번호
	private ArrayList<Attachment> reviewAtList; // 리뷰 사진 리스트
	
	public Review() {
		super();
	}
	
	public Review(int reviewNo, String reviewRating, String reviewContent, String reviewEnrollDate, String reviewModifyDate,
			String status, String restNo, String userNo, ArrayList<Attachment> reviewAt) {
		super();
		this.reviewNo = reviewNo;
		this.reviewRating = reviewRating;
		this.reviewContent = reviewContent;
		this.reviewEnrollDate = reviewEnrollDate;
		this.reviewModifyDate = reviewModifyDate;
		this.status = status;
		this.restNo = restNo;
		this.userNo = userNo;
		this.reviewAtList = reviewAtList;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getReviewRating() {
		return reviewRating;
	}

	public void setReviewRating(String reviewRating) {
		this.reviewRating = reviewRating;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public String getReviewEnrollDate() {
		return reviewEnrollDate;
	}

	public void setReviewEnrollDate(String reviewEnrollDate) {
		this.reviewEnrollDate = reviewEnrollDate;
	}

	public String getReviewModifyDate() {
		return reviewModifyDate;
	}

	public void setReviewModifyDate(String reviewModifyDate) {
		this.reviewModifyDate = reviewModifyDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRestNo() {
		return restNo;
	}

	public void setRestNo(String restNo) {
		this.restNo = restNo;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public Review(ArrayList<Attachment> reviewAt) {
		super();
		this.reviewAtList = reviewAtList;
	}
	
	public void setReviewAtList(ArrayList<Attachment> reviewAtList) {
		this.reviewAtList = reviewAtList;
	}
	
	public ArrayList<Attachment> getReviewAtList(){
		return reviewAtList;
	}

	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", reviewRating=" + reviewRating + ", reviewContent=" + reviewContent
				+ ", reviewEnrollDate=" + reviewEnrollDate + ", reviewModifyDate=" + reviewModifyDate + ", status="
				+ status + ", restNo=" + restNo + ", userNo=" + userNo + ", reviewAtList=" + reviewAtList + "]";
	}
}
