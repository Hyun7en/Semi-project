package com.always5.customerService.model.vo;

public class CsKeyword {
	private int cskNo;
	private int cstNo;
	private String cskValue;
	private String cstValue;
	
	public CsKeyword() {
		super();
	}

	public CsKeyword(int cskNo, int cstNo, String cskValue, String cstValue) {
		super();
		this.cskNo = cskNo;
		this.cstNo = cstNo;
		this.cskValue = cskValue;
		this.cstValue = cstValue;
	}

	public int getCskNo() {
		return cskNo;
	}

	public void setCskNo(int cskNo) {
		this.cskNo = cskNo;
	}

	public int getCstNo() {
		return cstNo;
	}

	public void setCstNo(int cstNo) {
		this.cstNo = cstNo;
	}

	public String getCskValue() {
		return cskValue;
	}

	public void setCskValue(String cskValue) {
		this.cskValue = cskValue;
	}

	public String getCstValue() {
		return cstValue;
	}

	public void setCstValue(String cstValue) {
		this.cstValue = cstValue;
	}

	@Override
	public String toString() {
		return "CsKeyword [cskNo=" + cskNo + ", cstNo=" + cstNo + ", cskValue=" + cskValue + ", cstValue=" + cstValue
				+ "]";
	}
	
	
}
