package com.always5.user.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.always5.user.model.vo.User;

public class UserDao {
	public User loginUser(SqlSession sqlSession, User u) {
		return sqlSession.selectOne("userMapper.loginUser", u);
	}

	public int insertUser(SqlSession sqlSession, User u) {
		return sqlSession.insert("userMapper.insertUser", u);
	}

	public int deleteUser(SqlSession sqlSession, User u) {
		return sqlSession.delete("userMapper.deleteUser", u);
	}

	public int updateUser(SqlSession sqlSession, User u) {
		return sqlSession.update("userMapper.updateUser", u);
	}

	public User updatePwdUser(SqlSession sqlSession, User u) {
		return sqlSession.selectOne("userMapper.updatePwdUser", u);
	}

	public User updateIdUser(SqlSession sqlSession, User u) {
		return sqlSession.selectOne("userMapper.updateIdUser", u);
	}
}

