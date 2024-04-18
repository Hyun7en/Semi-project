package com.always5.customerService.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.always5.customerService.model.vo.CsType;


public class CsTypeDao {
	
public ArrayList<CsType> selectCskeyword(SqlSession sqlSession, int fcode){
		
		return (ArrayList)sqlSession.selectCskeyword("csMapper.selectCsType", fcode);
	}
}
