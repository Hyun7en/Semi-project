package com.always5.review.rest.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.template.Template;
import com.always5.common.vo.Attachment;
import com.always5.review.model.vo.Review;
import com.always5.review.rest.model.dao.RestDao;
import com.always5.review.rest.model.vo.Menu;
import com.always5.review.rest.model.vo.MenuCategory;
import com.always5.review.rest.model.vo.Restaurant;

public class RestServiceImpl implements RestService{
	
	public Restaurant selectRest(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		Restaurant rest = new RestDao().selectRest(sqlSession, restNo);
		
		if (rest != null) {
			ArrayList<Attachment> restAtList = new RestDao().selectRestAttachmentList(sqlSession, restNo);
			rest.setRestAtList(restAtList);
		} 

		sqlSession.close();
		return rest;
	}
	
	public ArrayList<Menu> selectMenuCategoryList(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Menu> mcList = new RestDao().selectMenuCategoryList(sqlSession, restNo);
		
		sqlSession.close();
		return mcList;
	}
	
	public ArrayList<Review> selectReviewList(int restNo){
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Review> reviewList = new RestDao().selectReviewList(sqlSession, restNo);
		ArrayList<Review> newReviewList = new ArrayList<>();
		
		if (!reviewList.isEmpty()) {
			for(Review r : reviewList) {
				ArrayList<Attachment> reviewAtList = new RestDao().selectReviewAttachmentList(sqlSession, r.getReviewNo());
				r.setReviewAtList(reviewAtList);
				newReviewList.add(r);
			}
		}
		sqlSession.close();
		return newReviewList;
	}

	@Override
	public int selectTotalDibs(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = new RestDao().selectTotalDibs(sqlSession, restNo);
		
		sqlSession.close();
		return 0;
	}

//	@Override
//	public ArrayList<Attachment> selectRestAttachmentList(int restNo) {
//		SqlSession sqlSession = Template.getSqlSession();
//		ArrayList<Attachment> restAtList = new RestDao().selectRestAttachmentList(sqlSession, restNo);
//		
//		sqlSession.close();
//		return restAtList;
//	}
//
//	@Override
//	public ArrayList<Attachment> selectReviewAttachmentList(int restNo) {
//		SqlSession sqlSession = Template.getSqlSession();
//		ArrayList<Attachment> reviewAtList = new RestDao().selectReviewAttachmentList(sqlSession, restNo);
//		
//		sqlSession.close();
//		return reviewAtList;
//	}
	
//	public ArrayList<Menu> selectMenuList(int restNo) {
//		SqlSession sqlSession = Template.getSqlSession();
//		ArrayList<Menu> list = new RestDao().selectMenu(sqlSession, restNo);
//		
//		sqlSession.close();
//		return menu;
//	}
	
	

}
