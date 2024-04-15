package com.always5.customerService.model.vo;

import java.sql.Date;

public class CustomerService {
	
	private int csNo;
	private String csType;
	private String csTItle;
	private String csContent;
	private Date csEnrollDate;
	private Date csModifyDate;
	private String csStatus;
	private String csWriter;
	
	public CustomerService() {
		super();
	}

	public CustomerService(int csNo, String csType, String csTItle, String csContent, Date csEnrollDate, Date csModifyDate,
			String csStatus, String csWriter) {
		super();
		this.csNo = csNo;
		this.csType = csType;
		this.csTItle = csTItle;
		this.csContent = csContent;
		this.csEnrollDate = csEnrollDate;
		this.csModifyDate = csModifyDate;
		this.csStatus = csStatus;
		this.csWriter = csWriter;
	}

	public int getCsNo() {
		return csNo;
	}

	public void setCsNo(int csNo) {
		this.csNo = csNo;
	}

	public String getCsType() {
		return csType;
	}

	public void setCsType(String csType) {
		this.csType = csType;
	}

	public String getCsTItle() {
		return csTItle;
	}

	public void setCsTItle(String csTItle) {
		this.csTItle = csTItle;
	}

	public String getCsContent() {
		return csContent;
	}

	public void setCsContent(String csContent) {
		this.csContent = csContent;
	}

	public Date getCsEnrollDate() {
		return csEnrollDate;
	}

	public void setCsEnrollDate(Date csEnrollDate) {
		this.csEnrollDate = csEnrollDate;
	}

	public Date getCsModifyDate() {
		return csModifyDate;
	}

	public void setCsModifyDate(Date csModifyDate) {
		this.csModifyDate = csModifyDate;
	}

	public String getCsStatus() {
		return csStatus;
	}

	public void setCsStatus(String csStatus) {
		this.csStatus = csStatus;
	}

	public String getCsWriter() {
		return csWriter;
	}

	public void setCsWriter(String csWriter) {
		this.csWriter = csWriter;
	}

	@Override
	public String toString() {
		return "CsNoti [csNo=" + csNo + ", csType=" + csType + ", csTItle=" + csTItle + ", csContent=" + csContent
				+ ", csEnrollDate=" + csEnrollDate + ", csModifyDate=" + csModifyDate + ", csStatus=" + csStatus
				+ ", csWriter=" + csWriter + "]";
	}
	
	
	
	
}
