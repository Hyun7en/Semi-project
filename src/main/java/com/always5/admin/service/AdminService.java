package com.always5.admin.service;

import java.sql.Connection;

import com.always5.review.rest.model.dao.RestDao;

public class AdminService {
	public int selectListCount() {
		Connection conn = getConnection();
		
		int listCount = new RestDao().selectListCount(conn);
		close(conn);
		
		return listCount;
	}

	private Connection getConnection() {
		// TODO Auto-generated method stub
		return null;
	}
}
