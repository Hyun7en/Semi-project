package com.always5.user.service;

import java.sql.Connection;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.template.Template;
import com.always5.user.model.dao.UserDao;
import com.always5.user.model.vo.User;

public class UserServiceImpl implements UserService{
	private UserDao uDao = new UserDao();
	
	@Override
	public User loginUser(User u) {
		SqlSession sqlSession = Template.getSqlSession();
		User loginUser = uDao.loginUser(sqlSession, u);
		
		sqlSession.close();
		return loginUser;
	}
	
	//회원가입을 권한에 따라 처리
	@Override
	public int insertUser(User u) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = uDao.insertUser(sqlSession, u);
		
		//회원가입 성공 시 commit, 실패 시 rollback
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		return result;
    }
	
	@Override
	public int deleteUser(User u) {
		//회원 탈퇴
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = uDao.deleteUser(sqlSession, u);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		return result;
    }
	
	@Override
	public User updateUserID(User u) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = uDao.updateUserID(sqlSession, u);
		
		User updateUserID = null;
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		User userId = uDao.loginUser(sqlSession, u);
		sqlSession.close();
		return userId;
    }
	
	@Override
	public User updateUserPwd(User u) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = uDao.updateUserPwd(sqlSession, u);
		
		User updateUserPwd = null;
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		User userPwd = uDao.loginUser(sqlSession, u);
		sqlSession.close();
		return userPwd;
    }
	
	@Override
	public User updateUserNickName(User u) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = uDao.updateUserNickName(sqlSession, u);
		
		User updateUserNickName = null;
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		User nickName = uDao.loginUser(sqlSession, u);
		sqlSession.close();
		return nickName;
    }
}