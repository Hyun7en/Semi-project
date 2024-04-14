package com.always5.review.rest.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.always5.review.rest.model.vo.Menu;
import com.always5.review.rest.model.vo.Restaurant;

public class RestDao {
	public Restaurant selectRest(SqlSession sqlSession, int restNo) {
		return sqlSession.selectOne("restMapper.selectRest", restNo);
	}
	
	public ArrayList<Menu> selectMenuList(SqlSession sqlSession, int restNo) {
		return (ArrayList)sqlSession.selectList("restMapper.selectMenuList", restNo);
	}

}
