package com.always5.review.rest.service;

import java.util.ArrayList;

import com.always5.common.vo.Attachment;
import com.always5.review.model.vo.Review;
import com.always5.review.rest.model.vo.Menu;
import com.always5.review.rest.model.vo.Restaurant;

public interface RestService {
	// 가게 메인 페이지 조회
	public Restaurant selectRest(int restNo);
	public ArrayList<Menu> selectMenuCategoryList(int restNo);
	public int selectTotalDibs(int restNo);
	public ArrayList<Review> selectReviewList(int restNo);
	

}
