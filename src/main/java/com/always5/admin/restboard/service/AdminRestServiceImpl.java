package com.always5.admin.restboard.service;

import static com.always5.common.template.JDBCTemplate.close;
import static com.always5.common.template.JDBCTemplate.commit;
import static com.always5.common.template.JDBCTemplate.getConnection;
import static com.always5.common.template.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.always5.admin.restboard.model.dao.RestBoardDao;
import com.always5.common.template.Template;
import com.always5.common.vo.Attachment;
import com.always5.common.vo.PageInfo;
import com.always5.review.rest.model.vo.FoodCategory;
import com.always5.review.rest.model.vo.Restaurant;


public class AdminRestServiceImpl implements AdminRestService{
	
	private RestBoardDao rDao = new RestBoardDao();
	
	// admin 레스토랑 리스트 게시판
	@Override
	public int selectRestListCount() {
		SqlSession sqlSession = Template.getSqlSession();
		int listCount = rDao.selectRestListCount(sqlSession);
		
		sqlSession.close();
		return listCount;
	}
	
	@Override
	public ArrayList<Restaurant> selectList(PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Restaurant> list = rDao.selectList(sqlSession, pi);
		
		sqlSession.close();
		
		return list;

	}

	//레스토랑 등록추가
	public int insertRestaurant(Restaurant r, Attachment at) {
		SqlSession sqlSession = Template.getSqlSession();
		RestBoardDao rDao = new RestBoardDao();
		int restNo = rDao.selectRestNo(sqlSession);
		r.setRestNo(restNo);
		int result1 = rDao.insertRestaurant(sqlSession, r);
		int result2 = 1;
		
		if (at != null) {
			result2 = rDao.insertAttachment(sqlSession, at);
		}
		
		if (result1 > 0 && result2 > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		
		sqlSession.close();
		
		return (result1 * result2) > 0 ? restNo : 0;
	}
	
	//레스토랑 이름 메뉴작성으로 넘기기
	public Restaurant selectRestName() {
	    SqlSession sqlSession = Template.getSqlSession();
	    Restaurant rest = rDao.selectRestName(sqlSession);
	    sqlSession.close();
	    return rest;
	}
	//레스토랑 등록정보 수정
	public Restaurant getRestaurantByNo(int restNo) {
		return null;
	}
	
	//음식카테고리 조회
	
	//admin 음식 카테고리 추가
	@Override
	public int insertFoodCategory(FoodCategory f) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = rDao.insertFoodCategory(sqlSession,f);
		
		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

}
