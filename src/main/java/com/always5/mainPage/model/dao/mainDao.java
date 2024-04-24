package com.always5.mainPage.model.dao;

import org.apache.ibatis.session.SqlSession;

public class mainDao {
	
	public int searchTopList(SqlSession sqlSession) {
		return sqlSession.selectOne("mainMapper.searchTopList");
		
	}

}
