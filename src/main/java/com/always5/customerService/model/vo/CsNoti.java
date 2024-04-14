package com.always5.customerService.model.vo;

import java.sql.Date;

public class CsNoti {
	
	private int notiNo;
	private String	notiTItle;
	private String notiContent;
	private Date notiEnrollDate;
	private Date notiModifyDate;
	private String notiStatus;
	private String notiWriter;
	
	public CsNoti() {
		super();
	}

	public CsNoti(int notiNo, String notiTItle, String notiContent, Date notiEnrollDate, Date notiModifyDate,
			String notiStatus, String notiWriter) {
		super();
		this.notiNo = notiNo;
		this.notiTItle = notiTItle;
		this.notiContent = notiContent;
		this.notiEnrollDate = notiEnrollDate;
		this.notiModifyDate = notiModifyDate;
		this.notiStatus = notiStatus;
		this.notiWriter = notiWriter;
	}

	public int getNotiNo() {
		return notiNo;
	}

	public void setNotiNo(int notiNo) {
		this.notiNo = notiNo;
	}

	public String getNotiTItle() {
		return notiTItle;
	}

	public void setNotiTItle(String notiTItle) {
		this.notiTItle = notiTItle;
	}

	public String getNotiContent() {
		return notiContent;
	}

	public void setNotiContent(String notiContent) {
		this.notiContent = notiContent;
	}

	public Date getNotiEnrollDate() {
		return notiEnrollDate;
	}

	public void setNotiEnrollDate(Date notiEnrollDate) {
		this.notiEnrollDate = notiEnrollDate;
	}

	public Date getNotiModifyDate() {
		return notiModifyDate;
	}

	public void setNotiModifyDate(Date notiModifyDate) {
		this.notiModifyDate = notiModifyDate;
	}

	public String getNotiStatus() {
		return notiStatus;
	}

	public void setNotiStatus(String notiStatus) {
		this.notiStatus = notiStatus;
	}

	public String getNotiWriter() {
		return notiWriter;
	}

	public void setNotiWriter(String notiWriter) {
		this.notiWriter = notiWriter;
	}

	@Override
	public String toString() {
		return "CsNoti [notiNo=" + notiNo + ", notiTItle=" + notiTItle + ", notiContent=" + notiContent
				+ ", notiEnrollDate=" + notiEnrollDate + ", notiModifyDate=" + notiModifyDate + ", notiStatus="
				+ notiStatus + ", notiWriter=" + notiWriter + "]";
	}
	
	

}
