package com.always5.customerService.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.always5.customerService.model.vo.CsKeyword;

public class CsKeywordDao {
	
	public ArrayList<CsKeyword> selectCskeyword(SqlSession sqlSession, int fcode){
		
		return (ArrayList)sqlSession.selectCskeyword("csMapper.selectCskeyword", fcode);
	}
}
