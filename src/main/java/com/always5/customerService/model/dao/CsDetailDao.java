package com.always5.customerService.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.always5.customerService.model.vo.CsDetail;

public class CsDetailDao {
	
	public ArrayList<CsDetail> selectCsDetail(SqlSession sqlSession, int fcode){
		
		return (ArrayList)sqlSession.selectCsDetail("csMapper.selectCsDetail", fcode);
	}
}
