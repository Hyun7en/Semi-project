package com.always5.admin.restboard.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;


import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.always5.common.vo.Attachment;
import com.always5.common.vo.PageInfo;
import com.always5.review.rest.model.vo.FoodCategory;
import com.always5.review.rest.model.vo.Restaurant;

public class RestBoardDao {
	private Properties prop = new Properties();
	
	//레스토랑 리스트 게시판 
	public ArrayList<Restaurant> selectList(SqlSession sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("restMapper.selectList", null, rowBounds);
	}
	
	//등록된 레스토랑 리스트 검색
	public ArrayList<Restaurant> selectSearchList(SqlSession sqlSession, HashMap<String, String> map, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("restMapper.selectSearchList", map, rowBounds);
	}

	public int selectRestListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("restMapper.selectRestListCount");
	}

	//레스토랑 등록 추가
	public int insertRestaurant(SqlSession sqlSession, Restaurant r) {
		return sqlSession.insert("restMapper.insertRestaurant", r);
    }
	//레스토랑 이름 메뉴작성으로 넘기기
	public Restaurant selectRestName(SqlSession sqlSession) {
	    return sqlSession.selectOne("restMapper.selectRestName");
	}

	//레스토랑 등록 - 사진추가
	public int insertAttachment(SqlSession sqlSession, Attachment at) {
        return sqlSession.insert("restMapper.insertAttachment", at);
    }
	//admin 음식 카테고리 리스트 조회
	public ArrayList<FoodCategory> selectFoodCategoryList(Connection conn) {

		return null;
	}
	
	//admin 음식 카테고리 입력
	public int insertFoodCategory(SqlSession sqlSession, FoodCategory f) {
		int result = sqlSession.insert("foodCategoryMapper.insertFoodCategory", f);
		return result;
	}

	//admin 음식 카테고리 입력
	public int selectRestNo(SqlSession sqlSession) {
		int result = sqlSession.selectOne("restMapper.selectRestNo");
		return result;
	}
}
