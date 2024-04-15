package com.always5.review.rest.model.vo;

public class MenuCategory {
	
	private int menuCategoryNo;
	private String menuCategoryName;
	
	public MenuCategory() {
		super();
	}

	public MenuCategory(int menuCategoryNo, String menuCategoryName) {
		super();
		this.menuCategoryNo = menuCategoryNo;
		this.menuCategoryName = menuCategoryName;
	}

	public int getMenuCategoryNo() {
		return menuCategoryNo;
	}

	public void setMenuCategoryNo(int menuCategoryNo) {
		this.menuCategoryNo = menuCategoryNo;
	}

	public String getMenuCategoryName() {
		return menuCategoryName;
	}

	public void setMenuCategoryName(String menuCategoryName) {
		this.menuCategoryName = menuCategoryName;
	}

	@Override
	public String toString() {
		return "MenuCategory [menuCategoryNo=" + menuCategoryNo + ", menuCategoryName=" + menuCategoryName + "]";
	}
	
}
