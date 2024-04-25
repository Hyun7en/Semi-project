package com.always5.customerService.model.vo;

import java.sql.Date;

public class CsDetail {
	private int csDetailNo;
	private int csKeywordNo;
	private String csDetailTitle;
	private String csDetailContent;
	private Date csDetailEnrollDate;
	private Date csDetailModifyDate;
	private String csDetailStatus;
	private String csDetailWriter;
	
	public CsDetail() {
		super();
	}
	
	
	
	public CsDetail(int csKeywordNo, String csDetailTitle, String csDetailContent, String csDetailWriter) {
		super();
		this.csKeywordNo = csKeywordNo;
		this.csDetailTitle = csDetailTitle;
		this.csDetailContent = csDetailContent;
		this.csDetailWriter = csDetailWriter;
	}



	public CsDetail(int csDetailNo, int csKeywordNo, String csDetailTitle, String csDetailContent,
			Date csDetailEnrollDate, Date csDetailModifyDate, String csDetailStatus, String csDetailWriter) {
		super();
		this.csDetailNo = csDetailNo;
		this.csKeywordNo = csKeywordNo;
		this.csDetailTitle = csDetailTitle;
		this.csDetailContent = csDetailContent;
		this.csDetailEnrollDate = csDetailEnrollDate;
		this.csDetailModifyDate = csDetailModifyDate;
		this.csDetailStatus = csDetailStatus;
		this.csDetailWriter = csDetailWriter;
	}

	public int getCsDetailNo() {
		return csDetailNo;
	}

	public void setCsDetailNo(int csDetailNo) {
		this.csDetailNo = csDetailNo;
	}

	public int getCsKeywordNo() {
		return csKeywordNo;
	}

	public void setCsKeywordNo(int csKeywordNo) {
		this.csKeywordNo = csKeywordNo;
	}

	public String getCsDetailTitle() {
		return csDetailTitle;
	}

	public void setCsDetailTitle(String csDetailTitle) {
		this.csDetailTitle = csDetailTitle;
	}

	public String getCsDetailContent() {
		return csDetailContent;
	}

	public void setCsDetailContent(String csDetailContent) {
		this.csDetailContent = csDetailContent;
	}

	public Date getCsDetailEnrollDate() {
		return csDetailEnrollDate;
	}

	public void setCsDetailEnrollDate(Date csDetailEnrollDate) {
		this.csDetailEnrollDate = csDetailEnrollDate;
	}

	public Date getCsDetailModifyDate() {
		return csDetailModifyDate;
	}

	public void setCsDetailModifyDate(Date csDetailModifyDate) {
		this.csDetailModifyDate = csDetailModifyDate;
	}

	public String getCsDetailStatus() {
		return csDetailStatus;
	}

	public void setCsDetailStatus(String csDetailStatus) {
		this.csDetailStatus = csDetailStatus;
	}

	public String getCsDetailWriter() {
		return csDetailWriter;
	}

	public void setCsDetailWriter(String csDetailWriter) {
		this.csDetailWriter = csDetailWriter;
	}

	@Override
	public String toString() {
		return "CsDetail [csDetailNo=" + csDetailNo + ", csKeywordNo=" + csKeywordNo + ", csDetailTitle="
				+ csDetailTitle + ", csDetailContent=" + csDetailContent + ", csDetailEnrollDate=" + csDetailEnrollDate
				+ ", csDetailModifyDate=" + csDetailModifyDate + ", csDetailStatus=" + csDetailStatus
				+ ", csDetailWriter=" + csDetailWriter + "]";
	}
	
	
	
	
}
