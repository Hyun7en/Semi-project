package com.always5.review.rest.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.template.Template;
import com.always5.review.model.vo.Review;
import com.always5.review.rest.model.dao.RestDao;
import com.always5.review.rest.model.vo.MenuCategory;
import com.always5.review.rest.model.vo.Restaurant;

public class RestServiceImpl implements RestService{
	
	public Restaurant selectRest(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		Restaurant rest = new RestDao().selectRest(sqlSession, restNo);
		
		sqlSession.close();
		return rest;
	}
	
	public ArrayList<MenuCategory> selectMenuCategoryList(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<MenuCategory> mcList = new RestDao().selectMenuCategoryList(sqlSession, restNo);
		
		sqlSession.close();
		return mcList;
	}
	
	public ArrayList<Review> selectReviewList(int restNo){
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Review> reviewList = new RestDao().selectReviewList(sqlSession, restNo);
		
		sqlSession.close();
		return reviewList;
	}
	
//	public ArrayList<Menu> selectMenuList(int restNo) {
//		SqlSession sqlSession = Template.getSqlSession();
//		ArrayList<Menu> list = new RestDao().selectMenu(sqlSession, restNo);
//		
//		sqlSession.close();
//		return menu;
//	}
	
	

}
