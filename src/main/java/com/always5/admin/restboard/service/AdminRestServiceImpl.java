package com.always5.admin.restboard.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.ibatis.session.SqlSession;

import com.always5.admin.restboard.model.dao.RestBoardDao;
import com.always5.common.template.Template;
import com.always5.common.vo.PageInfo;
import com.always5.review.rest.model.vo.Restaurant;


public class AdminRestServiceImpl implements AdminRestService{
	
	private RestBoardDao rDao = new RestBoardDao();
	
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

	

}
