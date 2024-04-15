package com.always5.review.rest.model.vo;

public class Menu {
	private int menuNo;
	private String menuName;
	private String menuPrice;
	private String status;
	private String restNo;
	private String menuCategoryNo;
	
	public Menu() {
		super();
	}

	public Menu(int menuNo, String menuName, String menuPrice, String status, String restNo, String menuCategoryNo) {
		super();
		this.menuNo = menuNo;
		this.menuName = menuName;
		this.menuPrice = menuPrice;
		this.status = status;
		this.restNo = restNo;
		this.menuCategoryNo = menuCategoryNo;
	}

	public int getMenuNo() {
		return menuNo;
	}

	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getMenuPrice() {
		return menuPrice;
	}

	public void setMenuPrice(String menuPrice) {
		this.menuPrice = menuPrice;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRestNo() {
		return restNo;
	}

	public void setRestNo(String restNo) {
		this.restNo = restNo;
	}

	public String getMenuCategoryNo() {
		return menuCategoryNo;
	}

	public void setMenuCategoryNo(String menuCategoryNo) {
		this.menuCategoryNo = menuCategoryNo;
	}

	@Override
	public String toString() {
		return "Menu [menuNo=" + menuNo + ", menuName=" + menuName + ", menuPrice=" + menuPrice + ", status=" + status
				+ ", restNo=" + restNo + ", menuCategoryNo=" + menuCategoryNo + "]";
	}

	
}
