package com.always5.customerService.service;

import java.sql.Connection;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.template.Template;
import com.always5.customerService.model.dao.CsCenterDao;
import com.always5.customerService.model.vo.CsDetail;
import com.always5.customerService.model.vo.CsKeyword;
import com.always5.customerService.model.vo.CsType;

public class CsCenterServiceImpl implements CsCenterService {

	private CsCenterDao csCenterDao = new CsCenterDao();

	@Override
	public ArrayList<CsType> selectCsTypeList() {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<CsType> csTypeList = csCenterDao.selectCsTypeList(sqlSession);
		
		sqlSession.close();
		
		return csTypeList;
	}

	@Override
	public ArrayList<CsKeyword> selectCskeywordList() {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<CsKeyword> csKeywordList = csCenterDao.selectCskeywordList(sqlSession);
		
		sqlSession.close();
		return csKeywordList;
	}

	@Override
	public ArrayList<CsDetail> selectCsDetailList() {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<CsDetail> csDetailList = csCenterDao.selectCsDetailList(sqlSession);
		
		sqlSession.close();
		
		return csDetailList;
	}
	
	
	
}
