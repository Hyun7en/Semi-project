package com.always5.user.service;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.template.Template;
import com.always5.user.model.dao.MyPageDao;
import com.always5.user.model.vo.User;

public class MyPageServiceImpl implements MyPageService{
	private MyPageDao mDao = new MyPageDao();
	
	@Override
	public User MyPage(User u) {
		SqlSession sqlSession = Template.getSqlSession();
		User myPage = mDao.MyPage(sqlSession, u);
		
		sqlSession.close();
		return myPage;
	}
	
	@Override
	public User MyPageGoods(User u) {
		SqlSession sqlSession = Template.getSqlSession();
		User myPageGoods = mDao.MyPageGoods(sqlSession, u);
		
		sqlSession.close();
		return myPageGoods;
	}
	
	@Override
	public User MyPageReview(User u) {
		SqlSession sqlSession = Template.getSqlSession();
		User myPageReview = mDao.MyPageReview(sqlSession, u);
		
		sqlSession.close();
		return myPageReview;
	}
	
	@Override
	public User MyPageReviewGoods(User u) {
		SqlSession sqlSession = Template.getSqlSession();
		User myPageReviewGoods = mDao.MyPageReviewGoods(sqlSession, u);
		
		sqlSession.close();
		return myPageReviewGoods;
	}
}
