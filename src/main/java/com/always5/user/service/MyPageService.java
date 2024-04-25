package com.always5.user.service;

import java.util.ArrayList;

import com.always5.review.model.vo.Review;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.user.model.vo.Mypage;

public interface MyPageService {
	Mypage MyPage(Mypage m);
	
	ArrayList<Restaurant> MyPageGoods(int userNo);
	
	ArrayList<Review> MyPageReview(int userNo);
	
	public abstract int MyPageReviewGoods(Mypage m);
}
