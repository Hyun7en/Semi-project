package com.always5.review.rest.service;

import java.util.ArrayList;

import com.always5.common.vo.Attachment;
import com.always5.review.model.vo.Review;
import com.always5.review.rest.model.vo.Menu;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.user.model.vo.Dibs;

public interface RestService {

	// 가게 메인 - 가게 정보 조회
	public Restaurant selectRest(int restNo);
	
	// 가게 메인 - 가게 메뉴 카테고리 조회
	public ArrayList<Menu> selectMenuCategoryList(int restNo);
	
	// 가게 찜 - 로그인한 사용자 찜 여부
	public Dibs checkDibs(Dibs dibsInfo);
	
	// 가게 찜 - 가게 총 찜 개수 조회
	public Restaurant selectDibsCount(String restNo);
	
	// 가게 찜 - 가게 총 찜 개수 수정
	public String updateDibsCount(String restNo, String check);
	
	// 가게 찜 - 가게 찜 선택 시 update
	public Dibs insertDibs(Dibs dibsInfo);
	
	// 가게 찜 - 가게 찜 선택 시 delete
	public Dibs deleteDibs(Dibs dibsInfo);
	
	// 가게 리뷰 - 리뷰 리스트 조회
	public ArrayList<Review> selectReviewList(int restNo);
	
	// 가게 리뷰 - 별점 별 리뷰 개수 조회
	public ArrayList<Integer> selectRatingCount(int restNo);
	
	// 가게 메뉴 리스트 조회
	public ArrayList<Menu> selectMenuList(int restNo);
	
	// 가게 이미지 리스트 조회
	public ArrayList<Attachment> selectAttachmentList(int restNo);
	
	// 가게 총 평점 계산
//	public double operateRating(int restNo);

}
