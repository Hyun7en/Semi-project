package com.always5.user.service;

import com.always5.user.model.vo.User;

public interface UserService {
	// 로그인
	User loginUser(User u);

	// 회원가입
	int insertUser(User u);

	// 회원탈퇴
	int deleteUser(User u);

	// 회원정보수정
	int updateUser(User u);

	// 비밀번호 변경
	User updatePwdUser(User u);

	// 아이디 찾기
	User updateIdUser(User u);
	
}
