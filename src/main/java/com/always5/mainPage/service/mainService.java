package com.always5.mainPage.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.template.Template;
import com.always5.review.rest.model.vo.Restaurant;

public class mainService {
	
	private mainDao mDao = new mainDao();
	
	public ArrayList<Restaurant> searchTopList() {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Restaurant> list = mDao.searchTopList(sqlSession, re);
		sqlSession.close();		
		return list;
	}
	

}
