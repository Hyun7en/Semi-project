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
	
	/** fcode에 따른 대분류를 ArrayList 객체 타입으로 가져오는 메서드 */
	@Override
	public ArrayList<CsType> selectCsType(int csCode) {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<CsType> csTypeList = csCenterDao.selectCsTypeList(csCode);
		
		sqlSession.close();
		
		return csTypeList;
	}
	
	/** fcode에 따른 중분류를 ArrayList 객체 타입으로 가져오는 메서드 */
	@Override
	public ArrayList<CsKeyword> selectCskeyword(int csCode) {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<CsKeyword> cskeywordList = csCenterDao.selectCskeywordList(csCode);
		
		sqlSession.close();
		
		return cskeywordList;
	}

	/** fcode에 따른 csDetail 데이터를 ArrayList 객체 타입으로 반환하는 메서드 */
	@Override
	public ArrayList<CsDetail> selectCsDetail(int fcode) {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<CsDetail> csDetailList = csCenterDao.selectCsDetailList(fcode);
		
		sqlSession.close();
		
		return csDetailList;
	}
	
	
}
