package com.always5.customerService.model.vo;

public class CsType {
	
	private int csTypeNo;
	private String csTypeValue;
	
	public CsType() {
		super();
	}

	public CsType(int csTypeNo, String csTypeValue) {
		super();
		this.csTypeNo = csTypeNo;
		this.csTypeValue = csTypeValue;
	}

	public int getCsTypeNo() {
		return csTypeNo;
	}

	public void setCsTypeNo(int csTypeNo) {
		this.csTypeNo = csTypeNo;
	}

	public String getCsTypeValue() {
		return csTypeValue;
	}

	public void setCsTypeValue(String csTypeValue) {
		this.csTypeValue = csTypeValue;
	}

	@Override
	public String toString() {
		return "CsType [csTypeNo=" + csTypeNo + ", csTypeValue=" + csTypeValue + "]";
	}
	
	
	
	
}
