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
	public ArrayList<CsType> selectCsTypeList(int csTypeNo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<CsType> csTypeList = csCenterDao.selectCsTypeList(sqlSession,csTypeNo);
		
		sqlSession.close();
		
		return csTypeList;
	}

	@Override
	public ArrayList<CsKeyword> selectCskeywordList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<CsDetail> selectCsDetailList() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
