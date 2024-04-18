package com.always5.admin.restboard.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.always5.common.vo.PageInfo;
import com.always5.review.rest.model.vo.Restaurant;

public interface AdminRestService {
	//admin 레스토랑 게시판리스트 조회
	public int selectRestListCount(PageInfo pi);
	public ArrayList<Restaurant> selectList(PageInfo pi);
	
	//admin 레스토랑 검색
	public int selectSearchCount(HashMap<String, String> map);
	public ArrayList<Restaurant> selectSearchList(HashMap<String, String> map, PageInfo pi);

	//admin 레스토랑 상세조회
	public Restaurant increaseCount(int restNo);
	
	
	

}
