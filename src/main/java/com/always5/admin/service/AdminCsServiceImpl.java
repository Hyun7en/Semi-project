package com.always5.admin.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.always5.admin.model.dao.AdminCsDao;
import com.always5.common.template.Template;
import com.always5.common.vo.PageInfo;
import com.always5.customerService.model.vo.CsDetail;

public class AdminCsServiceImpl implements AdminCsService {
	
	private AdminCsDao acDao = new AdminCsDao();
	
	@Override
	public int selectAdminCsListCount() {
		SqlSession sqlSession = Template.getSqlSession();
		int AdminCslistCount = acDao.selectAdminCsListCount(sqlSession);
		
		sqlSession.close();
		
		return AdminCslistCount;
	}

	@Override
	public ArrayList<CsDetail> selectAdminCsList(PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<CsDetail> list = acDao.selectAdminCsList(sqlSession, pi);
		
		sqlSession.close();
		
		return list;

	}

	@Override
	public int selectSearchCount(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<CsDetail> selectSearchList(HashMap<String, String> map, PageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}

}
