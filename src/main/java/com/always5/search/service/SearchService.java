package com.always5.search.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.template.Template;
import com.always5.common.vo.Attachment;
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
	}
	
	public Attachment pickRestPic(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		Attachment at = rDao.pickRestPic(sqlSession, restNo);
		sqlSession.close();	
		return at;
		
	}
}