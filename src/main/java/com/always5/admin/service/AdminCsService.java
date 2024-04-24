package com.always5.admin.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.always5.common.vo.PageInfo;
import com.always5.customerService.model.vo.CsDetail;

public interface AdminCsService {
	
	//게시판리스트 조회
	public int selectAdminCsListCount();
	public ArrayList<CsDetail> selectAdminCsList(PageInfo pi);
	
	//게시글 검색
	public int selectSearchCount(HashMap<String, String> map);
	public ArrayList<CsDetail> selectSearchList(HashMap<String, String> map, PageInfo pi);
}
