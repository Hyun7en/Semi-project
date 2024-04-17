package com.always5.admin.service;

import com.always5.common.template.Template;
import com.always5.common.vo.PageInfo;
import com.always5.review.rest.model.dao.RestDao;

public class AdminServiceImpl implements AdminService{
	
	private RestDao rDao = new RestDao();
	
	@Override
	public int selectRest(PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		int listCount = rDao.selectListCount(sqlSession);
		
		sqlSession.close();
		
		return listCount;
	}

	@Override
	public int selectRest() {
		
		return 0;
	}
	
	
		
}
