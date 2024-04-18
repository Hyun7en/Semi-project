package com.always5.user.service;

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
	
	//비밀번호 수정
	//1. 현재 비밀번호와 새로운 비밀번호를 받아옴
	//2. 현재 비밀번호와 일치하는지 확인
	//3. 일치하면 새로운 비밀번호로 변경
	//4. 일치하지 않으면 실패
	//5. 성공하면 마이페이지로 이동
	
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

	@Override
	public User updateUser(User u) {
		// TODO Auto-generated method stub
		return null;
	}
}