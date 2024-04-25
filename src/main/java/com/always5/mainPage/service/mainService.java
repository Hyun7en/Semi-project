package com.always5.mainPage.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.template.Template;
import com.always5.common.vo.Attachment;
import com.always5.mainPage.model.dao.mainDao;
import com.always5.review.rest.model.vo.Restaurant;

public class mainService {
	
	private mainDao mDao = new mainDao();
	
	public ArrayList<Restaurant> mainTopList() {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Restaurant> tlist = mDao.mainTopList(sqlSession);
		
//		for(int i = 0; i < tlist.size(); i++) {
//			new RestServiceImpl().selectAttachmentList(tlist.get(i).getRestNo());
//		}
		
		sqlSession.close();		
		return tlist;
	}
	
	public ArrayList<Restaurant> mainNewTopList() {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Restaurant> nlist = mDao.mainNewTopList(sqlSession);
		
		sqlSession.close();		
		return nlist;
	}
	
	
	
	public Attachment pickRestPic(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		Attachment at = mDao.pickRestPic(sqlSession, restNo);
		sqlSession.close();	
		return at;
		
	}
	
	

}
