package com.always5.common.vo;

public class Attachment {
	private int fileNo; // 파일 번호
	private String changeName; // 바꿔서 저장한 파일 이름 (원본 이름 X)
	private String filePath; // 사진이 저장 되어 있는 경로
	private String reviewNo; // 리뷰 프라이머리 키
	private String restNo; // 가게 프라이머리 키
	
	public Attachment() {
		super();
	}

	public Attachment(int fileNo, String changeName, String filePath, String reviewNo, String restNo) {
		super();
		this.fileNo = fileNo;
		this.changeName = changeName;
		this.filePath = filePath;
		this.reviewNo = reviewNo;
		this.restNo = restNo;
	}

	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(String reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getStoreNo() {
		return restNo;
	}

	public void setStoreNo(String storeNo) {
		this.restNo = storeNo;
	}

	@Override
	public String toString() {
		return "Attachment [fileNo=" + fileNo + ", changeName=" + changeName + ", filePath=" + filePath + ", reviewNo="
				+ reviewNo + ", restNo=" + restNo + "]";
	}

	
}
