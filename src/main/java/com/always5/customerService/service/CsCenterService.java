package com.always5.customerService.service;

import java.util.ArrayList;

import com.always5.customerService.model.vo.CsDetail;
import com.always5.customerService.model.vo.CsKeyword;
import com.always5.customerService.model.vo.CsType;

public interface CsCenterService {
	
	ArrayList<CsKeyword> selectCskeyword(int fcode);
	
	ArrayList<CsDetail> selectCsDetail(int fcode);
	
	ArrayList<CsType> selectCsType(int fcode);
}
