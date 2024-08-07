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
@WebServlet("/myreviewgoods.ui")
public class MyPageReviewGoodsServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageReviewGoodsServletController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User loginUser = (User)request.getSession().getAttribute("loginUser");
		request.setAttribute("loginUser", loginUser);
		request.getRequestDispatcher("WEB-INF/views/user/MypageReviewGoods.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
