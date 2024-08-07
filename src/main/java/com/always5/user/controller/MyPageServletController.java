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

/**
 * Servlet implementation class myPageController
 */
@WebServlet("/mypage.ui")
public class MyPageServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageServletController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User loginUser = (User)request.getSession().getAttribute("loginUser");
		
//		Mypage m = new Mypage();
//		m.setUserId(request.getParameter("userId"));
//		m.setUserPwd(request.getParameter("userPwd"));
//		m.setNickName(request.getParameter("nickName"));
//		m.setUserName(request.getParameter("userName"));
//		m.setUserPhone(request.getParameter("phone"));
//		m.setUserEmail(request.getParameter("email"));
//		m.setUserAddress(request.getParameter("address"));
		
//		Mypage Mypage = new MyPageServiceImpl().MyPage(m);
		request.setAttribute("loginUser", loginUser);
//		System.out.println(Mypage);
		
		request.getRequestDispatcher("WEB-INF/views/user/MyPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
