package com.always5.admin.restboard.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.always5.common.vo.PageInfo;
import com.always5.review.rest.model.vo.Restaurant;

public class RestBoardDao {
	public int selectListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("restMapper.selectListCount");
	}
	
	public ArrayList<Restaurant> selectList(SqlSession sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("restMapper.selectList", null, rowBounds);
	}
	
	public int selectSearchCount(SqlSession sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("restMapper.selectSearchCount", map);
	}
	
	public ArrayList<Restaurant> selectSearchList(SqlSession sqlSession, HashMap<String, String> map, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("restMapper.selectSearchList", map, rowBounds);
	}
	
	public int increaseCount(SqlSession sqlSession, int restNo) {
		return sqlSession.update("restMapper.increaseCount", restNo);
	}
	
	public Restaurant selectBoard(SqlSession sqlSession, int restNo) {
		return sqlSession.selectOne("restMapper.selectBoard", restNo);
	}
	
	
}
