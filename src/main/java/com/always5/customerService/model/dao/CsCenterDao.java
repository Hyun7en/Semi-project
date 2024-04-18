package com.always5.customerService.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.always5.customerService.model.vo.CsDetail;
import com.always5.customerService.model.vo.CsKeyword;
import com.always5.customerService.model.vo.CsType;

public class CsCenterDao {
	
	public ArrayList<CsType> selectCsType(SqlSession sqlSession, int csCode){
		
		return (ArrayList)sqlSession.selectCsType("csMapper.selectCsType", csCode);
	}
	
	public ArrayList<CsKeyword> selectCskeyword(SqlSession sqlSession, int csCode){
		
		return (ArrayList)sqlSession.selectCskeyword("csMapper.selectCskeyword", csCode);
	}
	
	public ArrayList<CsDetail> selectCsDetail(SqlSession sqlSession, int csCode){
		
		return (ArrayList)sqlSession.selectCsDetail("csMapper.selectCsDetail", csCode);
	}
	
}
