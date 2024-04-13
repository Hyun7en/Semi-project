package com.always5.review.rest.service;

import org.apache.ibatis.session.SqlSession;

import com.always5.review.rest.model.vo.Restaurant;

public class RestService {
	
	public Restaurant selectRest(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		Restaurant rest = new RestDao().selectRest(sqlSession, restNo);
		
		sqlSession.close();
		return rest;
	}

}
