package com.always5.customerService.model.dao;

import org.apache.ibatis.session.SqlSession;

public class CustomerServiceDao {
	
	public int selectListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("boardMapper.selectListCount");
	}
}
