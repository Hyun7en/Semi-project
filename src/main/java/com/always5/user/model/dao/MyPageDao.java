package com.always5.user.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.vo.Attachment;
import com.always5.review.model.vo.Review;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.user.model.vo.Mypage;



public class MyPageDao {
	
	public Mypage MyPage(SqlSession sqlSession, Mypage m) {
		return sqlSession.selectOne("mypageMapper.MyPage", m);
	}
	
	public ArrayList<Restaurant> selectRestList(SqlSession sqlSession, int userNo) {
		System.out.println(userNo);
		return (ArrayList)sqlSession.selectList("mypageMapper.selectRestList", userNo);
	}
	
	public ArrayList<Review> selectReviewList(SqlSession sqlSession, int userNo) {
		System.out.println(userNo);
		return (ArrayList)sqlSession.selectList("mypageMapper.selectReviewList", userNo);
	}
	
	public ArrayList<Attachment> selectRestAttachmentList(SqlSession sqlSession, int restNo) {
		System.out.println(restNo);
		return (ArrayList)sqlSession.selectList("mypageMapper.selectRestAttachmentList", restNo);
	}
	
	public int MyPageReview(SqlSession sqlSession, Mypage m) {
		int result =  sqlSession.insert("mypageMapper.MyPageReview", m);
		return result;
	}

	public ArrayList<Restaurant> selectRestList2(SqlSession sqlSession, String restNo) {
		return (ArrayList)sqlSession.selectList("mypageMapper.selectRestList", restNo);
	}
}

