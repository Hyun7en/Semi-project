package com.always5.customerService.service;

import java.util.ArrayList;

import com.always5.customerService.model.vo.CsDetail;
import com.always5.customerService.model.vo.CsKeyword;

public interface CsCenterService {
	
	ArrayList<CsKeyword> selectCskeyword(int fcode);
	
	ArrayList<CsDetail> selectCsDetail(int fcode);
}
