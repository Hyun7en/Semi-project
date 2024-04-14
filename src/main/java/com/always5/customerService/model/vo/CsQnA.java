package com.always5.customerService.model.vo;

import java.sql.Date;

public class CsQnA {
	
	private int qnaNo;
	private String	qnaTItle;
	private String qnaContent;
	private Date qnaEnrollDate;
	private Date qnaModifyDate;
	private String qnaStatus;
	private String qnaWriter;
	
	public CsQnA() {
		super();
	}

	public CsQnA(int qnaNo, String qnaTItle, String qnaContent, Date qnaEnrollDate, Date qnaModifyDate,
			String qnaStatus, String qnaWriter) {
		super();
		this.qnaNo = qnaNo;
		this.qnaTItle = qnaTItle;
		this.qnaContent = qnaContent;
		this.qnaEnrollDate = qnaEnrollDate;
		this.qnaModifyDate = qnaModifyDate;
		this.qnaStatus = qnaStatus;
		this.qnaWriter = qnaWriter;
	}

	public int getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}

	public String getQnaTItle() {
		return qnaTItle;
	}

	public void setQnaTItle(String qnaTItle) {
		this.qnaTItle = qnaTItle;
	}

	public String getQnaContent() {
		return qnaContent;
	}

	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}

	public Date getQnaEnrollDate() {
		return qnaEnrollDate;
	}

	public void setQnaEnrollDate(Date qnaEnrollDate) {
		this.qnaEnrollDate = qnaEnrollDate;
	}

	public Date getQnaModifyDate() {
		return qnaModifyDate;
	}

	public void setQnaModifyDate(Date qnaModifyDate) {
		this.qnaModifyDate = qnaModifyDate;
	}

	public String getQnaStatus() {
		return qnaStatus;
	}

	public void setQnaStatus(String qnaStatus) {
		this.qnaStatus = qnaStatus;
	}

	public String getQnaWriter() {
		return qnaWriter;
	}

	public void setQnaWriter(String qnaWriter) {
		this.qnaWriter = qnaWriter;
	}

	@Override
	public String toString() {
		return "CsQnA [qnaNo=" + qnaNo + ", qnaTItle=" + qnaTItle + ", qnaContent=" + qnaContent + ", qnaEnrollDate="
				+ qnaEnrollDate + ", qnaModifyDate=" + qnaModifyDate + ", qnaStatus=" + qnaStatus + ", qnaWriter="
				+ qnaWriter + "]";
	}
	
	
}
