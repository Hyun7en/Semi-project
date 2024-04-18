package com.always5.admin.restboard.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.always5.admin.restboard.model.dao.RestBoardDao;
import com.always5.common.template.Template;
import com.always5.common.vo.PageInfo;
import com.always5.review.rest.model.vo.Restaurant;

public class AdminRestServiceImpl implements AdminRestService{
	
	private RestBoardDao rDao = new RestBoardDao();
	
	@Override
	public int selectRestListCount(PageInfo pi) {
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

	@Override
	public int selectSearchCount(HashMap<String, String> map) {
		SqlSession sqlSession = Template.getSqlSession();
		int searchCount = rDao.selectSearchCount(sqlSession, map);
		
		sqlSession.close();
		
		return searchCount;
	}

	@Override
	public ArrayList<Restaurant> selectSearchList(HashMap<String, String> map, PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Restaurant> list = rDao.selectSearchList(sqlSession, map, pi);
		
		sqlSession.close();
		return list;
	}

	@Override
	public Restaurant increaseCount(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = rDao.increaseCount(sqlSession, restNo);
		
		Restaurant r = null;
		if (result > 0) {
			sqlSession.commit();
			r = rDao.selectBoard(sqlSession, restNo);
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		return r;
	}

	
	
	
		
}
