package com.always5.review.rest.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.vo.Attachment;
import com.always5.review.model.vo.Review;
import com.always5.review.rest.model.vo.Menu;
import com.always5.review.rest.model.vo.Restaurant;

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
	
	public int selectTotalDibs(SqlSession sqlSession, int restNo) {
		return sqlSession.selectOne("restMapper.selectTotalDibs", restNo);
	}
	
	public ArrayList<Review> selectReviewList(SqlSession sqlSession, int restNo){
		return (ArrayList)sqlSession.selectList("restMapper.selectReviewList", restNo);
	}
	
	public ArrayList<Attachment> selectReviewAttachmentList(SqlSession sqlSession, int restNo){
		return (ArrayList)sqlSession.selectList("restMapper.selectReviewAttachmentList", restNo);
	}
	
//	public ArrayList<Menu> selectMenuList(SqlSession sqlSession, int restNo) {
//		return (ArrayList)sqlSession.selectList("restMapper.selectMenuList", restNo);
//	}

}
