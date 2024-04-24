package com.always5.mainPage.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.always5.review.rest.model.vo.Restaurant;

public class mainDao {
	
	public ArrayList<Restaurant> mainTopList(SqlSession sqlSession) {
		return (ArrayList)sqlSession.selectList("mainPageMapper.mainTopList");
		
	}
	
	public ArrayList<Restaurant> mainNewTopList(SqlSession sqlSession) {
		return (ArrayList)sqlSession.selectList("mainPageMapper.mainNewTopList");
		
	}
	
}
