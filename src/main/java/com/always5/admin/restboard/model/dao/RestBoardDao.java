package com.always5.admin.restboard.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.always5.common.vo.PageInfo;
import com.always5.review.rest.model.vo.Restaurant;

public class RestBoardDao {
	
	public ArrayList<Restaurant> selectList(SqlSession sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("restMapper.selectList", null, rowBounds);
	}

	public ArrayList<Restaurant> selectSearchList(SqlSession sqlSession, HashMap<String, String> map, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("restMapper.selectSearchList", map, rowBounds);
	}

	public int selectRestListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("restMapper.selectRestListCount");
	}

	
	
	
	
}
