package com.always5.customerService.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.always5.customerService.model.vo.CsDetail;
import com.always5.customerService.model.vo.CsKeyword;
import com.always5.customerService.model.vo.CsType;

public class CsCenterDao {
	
	public ArrayList<CsType> selectCsTypeList(SqlSession sqlSession){
		
		return (ArrayList)sqlSession.selectList("csMapper.selectCsTypeList");
	}
	
	public ArrayList<CsKeyword> selectCskeywordList(SqlSession sqlSession){
		return (ArrayList)sqlSession.selectList("csMapper.selectCskeywordList");
	}
	
	public ArrayList<CsDetail> selectCsDetailList(SqlSession sqlSession){
		return (ArrayList)sqlSession.selectList("csMapper.selectCsDetailList");
	}
	
}
