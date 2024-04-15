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
	
	@Override
	public int insertUser(User u) {
        SqlSession sqlSession = Template.getSqlSession();
        int result = uDao.insertUser(sqlSession, u);
        if(result > 0) {
            sqlSession.commit();
        }else {
            sqlSession.rollback();
        }
        sqlSession.close();
        return result;
    }
	
	@Override
	public int deleteUser(User u) {
        SqlSession sqlSession = Template.getSqlSession();
        int result = uDao.deleteUser(sqlSession, u);
        if(result > 0) {
            sqlSession.commit();
        }else {
            sqlSession.rollback();
        }
        sqlSession.close();
        return result;
    }
	
	@Override
	public int updateUser(User u) {
        SqlSession sqlSession = Template.getSqlSession();
        int result = uDao.updateUser(sqlSession, u);
        if(result > 0) {
            sqlSession.commit();
        }else {
            sqlSession.rollback();
        }
        sqlSession.close();
        return result;
    }
	
	@Override
	public User updatePwdUser(User u) {
        SqlSession sqlSession = Template.getSqlSession();
        User updatePwdUser = uDao.updatePwdUser(sqlSession, u);
        sqlSession.close();
        return updatePwdUser;
    }
	
	@Override
	public User updateIdUser(User u) {
		SqlSession sqlSession = Template.getSqlSession();
		User updateIdUser = uDao.updateIdUser(sqlSession, u);
		sqlSession.close();
		return updateIdUser;
	}	
}