package com.always5.customerService.model.vo;

public class CsKeyword {
	private int csKeywordNo;
	private int csTypeNo;
	private String csKeywordValue;
	
	public CsKeyword() {
		super();
	}
	
	public CsKeyword(int csKeywordNo, int csTypeNo, String csKeywordValue) {
		super();
		this.csKeywordNo = csKeywordNo;
		this.csTypeNo = csTypeNo;
		this.csKeywordValue = csKeywordValue;
	}
	
	public int getCsKeywordNo() {
		return csKeywordNo;
	}
	
	public void setCsKeywordNo(int csKeywordNo) {
		this.csKeywordNo = csKeywordNo;
	}
	
	public int getCsTypeNo() {
		return csTypeNo;
	}
	
	public void setCsTypeNo(int csTypeNo) {
		this.csTypeNo = csTypeNo;
	}
	
	public String getCsKeywordValue() {
		return csKeywordValue;
	}
	
	public void setCsKeywordValue(String csKeywordValue) {
		this.csKeywordValue = csKeywordValue;
	}
	
	@Override
	public String toString() {
		return "CsKeyword [csKeywordNo=" + csKeywordNo + ", csTypeNo=" + csTypeNo + ", csKeywordValue=" + csKeywordValue
				+ "]";
	}
	
	
	
	
	
}
