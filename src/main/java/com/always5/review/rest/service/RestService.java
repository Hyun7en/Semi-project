package com.always5.review.rest.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.template.Template;
import com.always5.review.rest.model.dao.RestDao;
import com.always5.review.rest.model.vo.Menu;
import com.always5.review.rest.model.vo.Restaurant;

public class RestService {
	
	public Restaurant selectRest(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		Restaurant rest = new RestDao().selectRest(sqlSession, restNo);
		
		sqlSession.close();
		return rest;
	}
	
	public ArrayList<Menu> selectMenuList(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Menu> list = new RestDao().selectMenu(sqlSession, restNo);
		
		sqlSession.close();
		return menu;
	}

}
