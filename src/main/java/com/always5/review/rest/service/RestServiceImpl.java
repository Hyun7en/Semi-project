package com.always5.review.rest.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.template.Template;
import com.always5.common.vo.Attachment;
import com.always5.review.model.vo.Review;
import com.always5.review.rest.model.dao.RestDao;
import com.always5.review.rest.model.vo.Menu;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.user.model.vo.Dibs;

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

	@Override
	public Dibs selectDibsForUserNo(Dibs dibsInfo) {
		SqlSession sqlSession = Template.getSqlSession();
		Dibs dibs = new RestDao().selectDibsForUserNo(sqlSession, dibsInfo);
		
		sqlSession.close();
		return dibs;
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
	public ArrayList<Integer> selectRatingCount(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Integer> ratingCount = new ArrayList<>();
		
		HashMap<String, Integer> map = new HashMap<>();
		map.put("restNo", restNo);
		
		for (int i = 1; i <= 5; i++) {
			map.put("ratingCount", i);
			int count = new RestDao().selectRatingCount(sqlSession, map);
			ratingCount.add(count);
			map.remove("ratingCount");
		}
		
		sqlSession.close();
		return ratingCount;
	}

	@Override
	public int operateRating(int restNo) {
		// 리뷰 평점 횟수
		ArrayList<Integer> list = new RestServiceImpl().selectRatingCount(restNo);
		
		// 각 평점 곱하기 평점 별 횟수 나누기 전체 횟수
		
		// 각 평점 곱하기 평점 별 횟수
		int totalRating = 0;
		for (int i = 1; i <= list.size(); i++) {
			totalRating += i * list.get(i - 1);
		}
		
		// 전체 횟수
		int count = 0;
		for (int i = 1; i <= list.size(); i++) {
			count += list.get(i - 1);
		}
		
		return totalRating / count;
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
