package com.always5.user.service;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.template.Template;
import com.always5.user.model.dao.UserDao;
import com.always5.user.model.vo.Mypage;
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
		
		User loginUser = uDao.loginUser(sqlSession, u);
		int result = uDao.updateUserID(sqlSession, u);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		return loginUser;
    }
	
	@Override
	public User updateUserPwd(User u) {
		SqlSession sqlSession = Template.getSqlSession();
		
		User loginUser = uDao.loginUser(sqlSession, u);
		int result = uDao.updateUserPwd(sqlSession, u);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		return loginUser;
    }
	
	@Override
	public User updateUserNickName(User u) {
		SqlSession sqlSession = Template.getSqlSession();
		
		User loginUser = uDao.loginUser(sqlSession, u);
		int result = uDao.updateUserNickName(sqlSession, u);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		return loginUser;
	}
}