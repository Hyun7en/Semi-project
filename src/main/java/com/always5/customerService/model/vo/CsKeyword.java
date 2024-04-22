package com.always5.customerService.model.vo;

public class CsKeyword {
	private int cskeywordNo;
	private int csTypeNo;
	private String cskeywordValue;
	
	public CsKeyword() {
		super();
	}
	
	public CsKeyword(int cskeywordNo, int csTypeNo, String cskeywordValue) {
		super();
		this.cskeywordNo = cskeywordNo;
		this.csTypeNo = csTypeNo;
		this.cskeywordValue = cskeywordValue;
	}

	public int getCskeywordNo() {
		return cskeywordNo;
	}

	public void setCskeywordNo(int cskeywordNo) {
		this.cskeywordNo = cskeywordNo;
	}

	public int getCsTypeNo() {
		return csTypeNo;
	}

	public void setCsTypeNo(int csTypeNo) {
		this.csTypeNo = csTypeNo;
	}

	public String getCskeywordValue() {
		return cskeywordValue;
	}

	public void setCskeywordValue(String cskeywordValue) {
		this.cskeywordValue = cskeywordValue;
	}

	@Override
	public String toString() {
		return "CsKeyword [cskeywordNo=" + cskeywordNo + ", csTypeNo=" + csTypeNo + ", cskeywordValue=" + cskeywordValue
				+ "]";
	}
	
	
	
}
