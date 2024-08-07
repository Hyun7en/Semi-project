package com.always5.admin.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.always5.admin.model.dao.AdminCsDao;
import com.always5.common.template.Template;
import com.always5.common.vo.PageInfo;
import com.always5.customerService.model.vo.CsDetail;
import com.always5.customerService.model.vo.CsKeyword;
import com.always5.customerService.model.vo.CsType;

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
		ArrayList<CsDetail> AdminCsList = acDao.selectAdminCsList(sqlSession, pi);
		
		sqlSession.close();
		
		return AdminCsList;

	}

	@Override
	public int selectAdminCsSearchCount(HashMap<String, String> map) {
		SqlSession sqlSession = Template.getSqlSession();
		int AdminCsSearchCount = acDao.selectAdminCsSearchCount(sqlSession, map);
		
		sqlSession.close();
		
		return AdminCsSearchCount;
	}

	@Override
	public ArrayList<CsDetail> selectAdminCsSearchList(HashMap<String, String> map, PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<CsDetail> AdminCsSearchList = acDao.selectAdminCsSearchList(sqlSession, map, pi);
		
		sqlSession.close();
		return AdminCsSearchList;
	}

	@Override
	public CsDetail selectBoard(int boardNo) {
		SqlSession sqlSession = Template.getSqlSession();
		 
		CsDetail csDetail = acDao.selectBoard(sqlSession, boardNo);
		sqlSession.close();

		return csDetail;
	}

	@Override
	public int insertAdminCs(CsDetail cs) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = acDao.insertAdminCs(sqlSession, cs);
		
		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public int deleteAdminCs(int boardNo) {
SqlSession sqlSession = Template.getSqlSession();
		
		int result = acDao.deleteAdminCs(sqlSession, boardNo);
		
		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}
	
	
}
