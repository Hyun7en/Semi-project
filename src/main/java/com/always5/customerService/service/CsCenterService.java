package com.always5.customerService.service;

import java.util.ArrayList;

import com.always5.customerService.model.vo.CsDetail;
import com.always5.customerService.model.vo.CsKeyword;
import com.always5.customerService.model.vo.CsType;

public interface CsCenterService {
	
	ArrayList<CsType> selectCsTypeList();
	
	ArrayList<CsKeyword> selectCskeywordList(int csTypeNo);
	
	ArrayList<CsDetail> selectCsDetailList(int csKeywordNo);
}
