package com.always5.review.rest.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.always5.review.model.vo.Review;
import com.always5.review.rest.model.vo.Menu;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.user.model.vo.Dibs;

public interface RestService {
	// 가게 메인 페이지 조회
	public Restaurant selectRest(int restNo);
	public ArrayList<Menu> selectMenuCategoryList(int restNo);
	public Dibs selectDibsForUserNo(Dibs dibsInfo);
	public ArrayList<Review> selectReviewList(int restNo);
	public ArrayList<Integer> selectRatingCount(int restNo);
	public double operateRating(int restNo);
	public ArrayList<Menu> selectMenuList(int restNo);
}
