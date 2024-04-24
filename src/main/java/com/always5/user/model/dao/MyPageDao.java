package com.always5.user.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.always5.user.model.vo.Mypage;



public class MyPageDao {
	
	public ArrayList<Mypage> MyPage(SqlSession sqlSession, Mypage m) {
		return (ArrayList)sqlSession.selectList("mypageMapper.MyPage", m);
	}
	
	public int MyPageGoods(SqlSession sqlSession, Mypage m) {
		int result =  sqlSession.insert("mypageMapper.MyPageGoods", m);
		return result;
	}
	
	public int MyPageReview(SqlSession sqlSession, Mypage m) {
		int result =  sqlSession.insert("mypageMapper.MyPageReview", m);
		return result;
	}
	
	public int MyPageReviewGoods(SqlSession sqlSession, Mypage m) {
		int result =  sqlSession.insert("mypageMapper.MyPageReviewGoods", m);
		return result;
	}
}

