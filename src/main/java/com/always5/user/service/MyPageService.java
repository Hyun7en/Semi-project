package com.always5.user.service;

import com.always5.user.model.vo.Mypage;

public interface MyPageService {
	public abstract int MyPage(Mypage m);
	
	public abstract int MyPageGoods(Mypage m);
	
	public abstract int MyPageReview(Mypage m);
	
	public abstract int MyPageReviewGoods(Mypage m);
}
