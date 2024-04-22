package com.always5.user.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.always5.user.model.vo.User;

public class MyPageDao {
	
	public User MyPage(SqlSession sqlSession, User u) {
		System.out.println("u");
		return sqlSession.selectOne("mypageMapper.mypage", u);
	}
	
	public User MyPageGoods(SqlSession sqlSession, User u) {
		return sqlSession.selectOne("mypageMapper.mypageGoods", u);
	}
	
	public User MyPageReview(SqlSession sqlSession, User u) {
		return sqlSession.selectOne("mypageMapper.mypageReview", u);
	}
	
	public User MyPageReviewGoods(SqlSession sqlSession, User u) {
		return sqlSession.selectOne("mypageMapper.mypageReviewGoods", u);
	}
}

