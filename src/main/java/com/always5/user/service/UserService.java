package com.always5.user.service;

import com.always5.user.model.vo.User;

public interface UserService {
	// 로그인
	public abstract User loginUser(User u);

	// 회원가입
	public abstract int insertUser(User u);

	// 회원탈퇴
	public abstract int deleteUser(User u);

	// 아이디 수정
	public abstract User updateUserID(User u);

	// 비밀번호 수정
	public abstract User updateUserPwd(User u);

	// 닉네임 수정
	public abstract User updateUserNickName(User u);
}
