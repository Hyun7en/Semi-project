package com.always5.search.service;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.template.Template;
import com.always5.search.dao.SearchDao;

public class SearchService {
	
	public  searchRestList() {
		SqlSession sqlSession = Template.getSqlSession();
		int listCount = SearchDao.searchRestList(sqlSession);
		sqlSession.close();
		return listCount;
	}

}