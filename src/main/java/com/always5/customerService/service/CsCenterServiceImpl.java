package com.always5.customerService.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.always5.customerService.model.dao.CsDetailDao;
import com.always5.customerService.model.dao.CsKeywordDao;
import com.always5.customerService.model.vo.CsDetail;
import com.always5.customerService.model.vo.CsKeyword;

public class CsCenterServiceImpl implements CsCenterService {

	
	/** fcode에 따른 중분류를 ArrayList 객체 타입으로 가져오는 메서드 */
	
	@Override
	public ArrayList<CsKeyword> selectCskeyword(int fcode) {
		ArrayList<CsKeyword> cskeywordList = CsKeywordDao.selectCskeywordList(fcode);
		

		return cskeywordList;
	}

	/** fcode에 따른 FAQ 데이터를 ArrayList 객체 타입으로 반환하는 메서드 */
	
	@Override
	public ArrayList<CsDetail> selectCsDetail(int fcode) {
		
		ArrayList<CsDetail> csDetailList = CsDetailDao.selectCsDetailList(fcode);

		return csDetailList;
	}
	
	
}
