package com.always5.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.always5.common.vo.PageInfo;
import com.always5.customerService.model.vo.CsDetail;
import com.always5.customerService.model.vo.CsKeyword;

public class AdminCsDao {
	
	public int selectAdminCsListCount(SqlSession sqlSession) {
		
		return sqlSession.selectOne("csMapper.selectAdminCsListCount");
	}
	
	public ArrayList<CsDetail> selectAdminCsList(SqlSession sqlSession, PageInfo pi){
		//마이바티스에서는 페이징처리를 위해 rowBounds라는 클래스를 제공한다.
		/* offset :몇개의 게시글을 건너뛰고 조회할건지에 대한 값
		 * 
		 * currentPage : 1        1~5      0      5
		 * currentPage : 2        6~10     5      5
		 * currentPage : 3        11~15    10     5
		 * 
		 */
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("csMapper.selectAdminCsList", null, rowBounds);
	}
	
	public int selectAdminCsSearchCount(SqlSession sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("csMapper.selectAdminCsSearchCount", map);
	}
	
	public ArrayList<CsDetail> selectAdminCsSearchList(SqlSession sqlSession, HashMap<String, String> map, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("csMapper.selectAdminCsSearchList", map, rowBounds);
	}
	
	public CsDetail selectBoard(SqlSession sqlSession, int boardNo) {
		return sqlSession.selectOne("csMapper.selectBoard", boardNo);
	}
}
