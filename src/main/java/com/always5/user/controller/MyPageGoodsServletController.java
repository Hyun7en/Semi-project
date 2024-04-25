package com.always5.user.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.common.vo.Attachment;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.user.model.vo.User;
import com.always5.user.service.MyPageServiceImpl;

/**
 * Servlet implementation class myPageController
 */
@WebServlet("/mygoods.ui")
public class MyPageGoodsServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageGoodsServletController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		User loginUser = (User)request.getSession().getAttribute("loginUser");
		
		ArrayList<Restaurant> list = new MyPageServiceImpl().MyPageGoods(loginUser.getUserNo());
	    
	    request.setAttribute("list", list);
	    request.setAttribute("loginUser", loginUser);
	    
		request.getRequestDispatcher("WEB-INF/views/user/MypageGoods.jsp").forward(request, response);
		
		
				
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
