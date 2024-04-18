package com.always5.customerService.model.vo;

import java.sql.Date;

public class CsDetail {
	private int csdNO;
	private String cskNo;
	private String cstNO;
	private String csdTitle;
	private String csdContent;
	private Date csdEnrollDate;
	private Date csdModifyDate;
	private String csdStatus;
	private String csdWriter;
	
	public CsDetail() {
		super();
	}

	public CsDetail(int csdNO, String cskNo, String cstNO, String csdTitle, String csdContent, Date csdEnrollDate,
			Date csdModifyDate, String csdStatus, String csdWriter) {
		super();
		this.csdNO = csdNO;
		this.cskNo = cskNo;
		this.cstNO = cstNO;
		this.csdTitle = csdTitle;
		this.csdContent = csdContent;
		this.csdEnrollDate = csdEnrollDate;
		this.csdModifyDate = csdModifyDate;
		this.csdStatus = csdStatus;
		this.csdWriter = csdWriter;
	}

	public int getCsdNO() {
		return csdNO;
	}

	public void setCsdNO(int csdNO) {
		this.csdNO = csdNO;
	}

	public String getCskNo() {
		return cskNo;
	}

	public void setCskNo(String cskNo) {
		this.cskNo = cskNo;
	}

	public String getCstNO() {
		return cstNO;
	}

	public void setCstNO(String cstNO) {
		this.cstNO = cstNO;
	}

	public String getCsdTitle() {
		return csdTitle;
	}

	public void setCsdTitle(String csdTitle) {
		this.csdTitle = csdTitle;
	}

	public String getCsdContent() {
		return csdContent;
	}

	public void setCsdContent(String csdContent) {
		this.csdContent = csdContent;
	}

	public Date getCsdEnrollDate() {
		return csdEnrollDate;
	}

	public void setCsdEnrollDate(Date csdEnrollDate) {
		this.csdEnrollDate = csdEnrollDate;
	}

	public Date getCsdModifyDate() {
		return csdModifyDate;
	}

	public void setCsdModifyDate(Date csdModifyDate) {
		this.csdModifyDate = csdModifyDate;
	}

	public String getCsdStatus() {
		return csdStatus;
	}

	public void setCsdStatus(String csdStatus) {
		this.csdStatus = csdStatus;
	}

	public String getCsdWriter() {
		return csdWriter;
	}

	public void setCsdWriter(String csdWriter) {
		this.csdWriter = csdWriter;
	}

	@Override
	public String toString() {
		return "CsDetail [csdNO=" + csdNO + ", cskNo=" + cskNo + ", cstNO=" + cstNO + ", csdTitle=" + csdTitle
				+ ", csdContent=" + csdContent + ", csdEnrollDate=" + csdEnrollDate + ", csdModifyDate=" + csdModifyDate
				+ ", csdStatus=" + csdStatus + ", csdWriter=" + csdWriter + "]";
	}
	
	
	
	
}
