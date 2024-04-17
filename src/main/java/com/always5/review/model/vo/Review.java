package com.always5.review.model.vo;

import java.sql.Date;

public class Review {
	private int reviewNo;
	private String reviewRating; // 별점
//	private String reviewTitle; // 제목
	private String reviewContent; // 내용
	private Date reviewEnrollDate; // 등록일
	private Date reviewModifyDate; // 수정일
	private String status; // 상태
//	private String reviewViews; // 조회수
	private String restNo; // 가게 번호
	private String userNo; // 회원 번호
	
	public Review() {
		super();
	}
	
	public Review(int reviewNo, String reviewRating, String reviewContent, Date reviewEnrollDate, Date reviewModifyDate,
			String status, String restNo, String userNo) {
		super();
		this.reviewNo = reviewNo;
		this.reviewRating = reviewRating;
		this.reviewContent = reviewContent;
		this.reviewEnrollDate = reviewEnrollDate;
		this.reviewModifyDate = reviewModifyDate;
		this.status = status;
		this.restNo = restNo;
		this.userNo = userNo;
	}

//	public Review(int reviewNo, String reviewRating, String reviewTitle, String reviewContent, Date reviewEnrollDate,
//	Date reviewModifyDate, String status, String reviewViews, String restNo, String userNo) {
//		super();
//		this.reviewNo = reviewNo;
//		this.reviewRating = reviewRating;
//		this.reviewTitle = reviewTitle;
//		this.reviewContent = reviewContent;
//		this.reviewEnrollDate = reviewEnrollDate;
//		this.reviewModifyDate = reviewModifyDate;
//		this.status = status;
//		this.reviewViews = reviewViews;
//		this.restNo = restNo;
//		this.userNo = userNo;
//	}
	
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

//	public String getReviewTitle() {
//		return reviewTitle;
//	}
//
//	public void setReviewTitle(String reviewTitle) {
//		this.reviewTitle = reviewTitle;
//	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public Date getReviewEnrollDate() {
		return reviewEnrollDate;
	}

	public void setReviewEnrollDate(Date reviewEnrollDate) {
		this.reviewEnrollDate = reviewEnrollDate;
	}

	public Date getReviewModifyDate() {
		return reviewModifyDate;
	}

	public void setReviewModifyDate(Date reviewModifyDate) {
		this.reviewModifyDate = reviewModifyDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

//	public String getReviewViews() {
//		return reviewViews;
//	}
//
//	public void setReviewViews(String reviewViews) {
//		this.reviewViews = reviewViews;
//	}

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

	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", reviewRating=" + reviewRating + ", reviewContent=" + reviewContent
				+ ", reviewEnrollDate=" + reviewEnrollDate + ", reviewModifyDate=" + reviewModifyDate + ", status="
				+ status + ", restNo=" + restNo + ", userNo=" + userNo + "]";
	}

}
