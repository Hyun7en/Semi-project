package com.always5.admin.restboard.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.always5.common.vo.PageInfo;
import com.always5.review.rest.model.vo.FoodCategory;
import com.always5.review.rest.model.vo.Restaurant;

public interface AdminRestService {
	
	//admin 레스토랑 게시판리스트 조회
	public int selectRestListCount();
	public ArrayList<Restaurant> selectList(PageInfo pi);
	
	
	//admin 레스토랑 등록
	
	
	//admin 레스토랑 수정
	Restaurant getRestaurantByNo(int restNo);
	
	//음식 카테고리 조회
	
	//admin 음식 카테고리 등록
	int insertFoodCategory(FoodCategory f);

}
