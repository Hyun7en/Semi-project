package com.always5.user.service;

import com.always5.user.model.vo.User;

public interface MyPageService {
	public abstract User MyPage(User u);
	
	public abstract User MyPageGoods(User u);
	
	public abstract User MyPageReview(User u);
	
	public abstract User MyPageReviewGoods(User u);
}
