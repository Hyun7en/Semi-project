package com.always5.review.rest.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.vo.Attachment;
import com.always5.review.model.vo.Review;
import com.always5.review.rest.model.vo.Menu;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.user.model.vo.Dibs;

public class RestDao {
	public Restaurant selectRest(SqlSession sqlSession, int restNo) {
		return sqlSession.selectOne("restMapper.selectRest", restNo);
	}
	
	public ArrayList<Attachment> selectRestAttachmentList(SqlSession sqlSession, int restNo){
		return (ArrayList)sqlSession.selectList("restMapper.selectRestAttachmentList", restNo);
	}
	
	public ArrayList<Menu> selectMenuCategoryList(SqlSession sqlSession, int restNo){
		return (ArrayList)sqlSession.selectList("restMapper.selectMenuCategoryList", restNo);
	}
	
	public Dibs selectDibsForUserNo(SqlSession sqlSession, Dibs dibsInfo) {
		return sqlSession.selectOne("restMapper.selectDibsForUserNo", dibsInfo);
	}
	
	public ArrayList<Review> selectReviewList(SqlSession sqlSession, int restNo){
		return (ArrayList)sqlSession.selectList("restMapper.selectReviewList", restNo);
	}
	
	public ArrayList<Attachment> selectReviewAttachmentList(SqlSession sqlSession, int restNo){
		return (ArrayList)sqlSession.selectList("restMapper.selectReviewAttachmentList", restNo);
	}
	
	public int selectRatingCount(SqlSession sqlSession, HashMap<String, Integer> map) {
		return sqlSession.selectOne("restMapper.selectRatingCount", map);
	}
	
//	public ArrayList<Menu> selectMenuList(SqlSession sqlSession, int restNo) {
//		return (ArrayList)sqlSession.selectList("restMapper.selectMenuList", restNo);
//	}

}
