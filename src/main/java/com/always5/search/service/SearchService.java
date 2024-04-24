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
	
<<<<<<< HEAD
	// (컨디션 조건 없는)순수 검색: 키워드에 맞는게 몇개냐
	public int searchrListCount(HashMap<String, String> map){
		SqlSession sqlSession = Template.getSqlSession();
		int restCount = rDao.searchrListCount(sqlSession, map);
		sqlSession.close();		
		return restCount;
	}
	
	// 순수 검색: 키워드에 맞는 결과를 list에 담아서 들고오기
	public ArrayList<Restaurant> selectrSearchList(HashMap<String, String> map, PageInfo re) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Restaurant> list = rDao.selectrSearchList(sqlSession, map, re);
		sqlSession.close();
		return list;
=======
	public ArrayList<Menu> searchMenuList(){
		
		
>>>>>>> bf4b416551bfa73eb11e26017c18069091543e3e
	}
}