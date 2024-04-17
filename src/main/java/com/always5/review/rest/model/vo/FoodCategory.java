package com.always5.review.rest.model.vo;

public class FoodCategory {
	
	private int foodCategoryNo;
	private String foodCategoryName;
	
	public FoodCategory() {
		super();
	}

	public FoodCategory(int foodCategoryNo, String foodCategoryName) {
		super();
		this.foodCategoryNo = foodCategoryNo;
		this.foodCategoryName = foodCategoryName;
	}

	public int getFoodCategoryNo() {
		return foodCategoryNo;
	}

	public void setFoodCategoryNo(int foodCategoryNo) {
		this.foodCategoryNo = foodCategoryNo;
	}

	public String getFoodCategoryName() {
		return foodCategoryName;
	}

	public void setFoodCategoryName(String foodCategoryName) {
		this.foodCategoryName = foodCategoryName;
	}

	@Override
	public String toString() {
		return "FoodCategory [foodCategoryNo=" + foodCategoryNo + ", foodCategoryName=" + foodCategoryName + "]";
	}
	
	
}
