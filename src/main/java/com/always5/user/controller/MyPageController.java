package com.always5.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.user.model.vo.Mypage;
import com.always5.user.model.vo.User;
import com.always5.user.service.MyPageServiceImpl;
import com.always5.user.service.UserServiceImpl;

/**
 * Servlet implementation class myPageController
 */
@WebServlet("/mypage.u")
public class MyPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Mypage m = new Mypage();
		m.setUserId(request.getParameter("userId"));
		m.setUserPwd(request.getParameter("userPwd"));
		m.setNickName(request.getParameter("NickName"));
		m.setUserName(request.getParameter("userName"));
		m.setUserPhone(request.getParameter("phone"));
		m.setUserEmail(request.getParameter("email"));
		m.setUserAddress(request.getParameter("address"));
		
		Mypage Mypage = new MyPageServiceImpl().MyPage(m);
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
