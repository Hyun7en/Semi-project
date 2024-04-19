package com.always5.search.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.template.Template;
import com.always5.common.vo.PageInfo;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.search.dao.SearchDao;


public class SearchService {
	
	private SearchDao rDao = new SearchDao();
	
	public ArrayList<Restaurant> selectSearchRest(PageInfo re) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Restaurant> list = rDao.selectSearchRest(sqlSession, re);
		sqlSession.close();		
		return list;
	}
	
	public int searchListCount() {
		SqlSession sqlSession = Template.getSqlSession();
		int restCount = rDao.searchListCount(sqlSession);
		sqlSession.close();
		return restCount;
	}
	
	public ArrayList<Restaurant> searchList(){
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Restaurant> list = new SearchDao().searchList(sqlSession);
		sqlSession.close();
		return list;
		
	}
	
}