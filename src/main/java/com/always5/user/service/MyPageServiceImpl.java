package com.always5.user.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.template.Template;
import com.always5.common.vo.Attachment;
import com.always5.review.model.vo.Review;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.user.model.dao.MyPageDao;
import com.always5.user.model.vo.Mypage;


public class MyPageServiceImpl implements MyPageService{
	private MyPageDao mDao = new MyPageDao();

	@Override
	public Mypage MyPage(Mypage m) {
		SqlSession sqlSession = Template.getSqlSession();
		Mypage Mypage = mDao.MyPage(sqlSession, m);

		sqlSession.close();
		return Mypage;
	}

	@Override
	public ArrayList<Restaurant> MyPageGoods(int userNo) {
		SqlSession sqlSession = Template.getSqlSession();


		ArrayList<Restaurant> list = mDao.selectRestList(sqlSession, userNo);

		for(int i=0; i<list.size(); i++) {
			ArrayList<Attachment> attachmentList = mDao.selectRestAttachmentList(sqlSession, list.get(i).getRestNo());
			list.get(i).setRestAtList(attachmentList);
		}

		sqlSession.close();
		return list;
	}

	@Override
	public ArrayList<Review> MyPageReview(int userNo) {
		SqlSession sqlSession = Template.getSqlSession();

		ArrayList<Review> list = mDao.selectReviewList(sqlSession, userNo);

		for(int i=0; i<list.size(); i++) {
			ArrayList<Attachment> attachmentList = mDao.selectRestAttachmentList(sqlSession, list.get(i).getReviewNo());
			list.get(i).setReviewAtList(attachmentList);
		}

		sqlSession.close();
		return list;
	}

	@Override
	public int MyPageReviewGoods(Mypage m) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = mDao.MyPageReview(sqlSession, m);

		sqlSession.close();
		return result;
	}
}
