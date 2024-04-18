package com.always5.user.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.always5.user.model.vo.User;

public class UserDao {
	
	public User loginUser(SqlSession sqlSession, User u) {
		return sqlSession.selectOne("userMapper.loginUser", u);
	}
	
	public int insertUser(SqlSession sqlSession, User u) {
		int result =  sqlSession.insert("userMapper.insertUser", u);
		return result;
	}

	public int deleteUser(SqlSession sqlSession, User u) {
		return sqlSession.update("userMapper.deleteUser", u);
	}

	public int updateUserID(SqlSession sqlSession, User u) {
		return sqlSession.update("userMapper.updateUserID", u);
	}

	public int updateUserPwd(SqlSession sqlSession, User u) {
		return sqlSession.update("userMapper.updateUserPwd", u);
	}

	public int updateUserNickName(SqlSession sqlSession, User u) {
		return sqlSession.update("userMapper.updateUserNickName", u);
	}
}

