package com.always5.user.service;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.template.Template;
import com.always5.user.model.dao.MyPageDao;
import com.always5.user.model.vo.Mypage;


public class MyPageServiceImpl implements MyPageService{
	private MyPageDao mDao = new MyPageDao();
	
	@Override
	public ArrayList<Mypage> Mypage(Mypage m) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Mypage> list = mDao.MyPage(sqlSession, m);
		
		sqlSession.close();
		return list;
	}
	
	@Override
	public int MyPageGoods(Mypage m) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = mDao.MyPageGoods(sqlSession, m);
		
		sqlSession.close();
		return result;
	}
	
	@Override
	public int MyPageReview(Mypage m) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = mDao.MyPageReview(sqlSession, m);
		
		sqlSession.close();
		return result;
	}
	
	@Override
	public int MyPageReviewGoods(Mypage m) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = mDao.MyPageReviewGoods(sqlSession, m);
		
		sqlSession.close();
		return result;
	}
}
