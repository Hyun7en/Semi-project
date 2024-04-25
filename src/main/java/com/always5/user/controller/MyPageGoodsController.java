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
import com.always5.review.rest.model.vo.Menu;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.user.model.vo.User;

/**
 * Servlet implementation class myPageController
 */
@WebServlet("/mygoods.u")
public class MyPageGoodsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageGoodsController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * User loginUser = (User)request.getSession().getAttribute("loginUser");
		 * request.setAttribute("loginUser", loginUser);
		 * request.getRequestDispatcher("WEB-INF/views/user/MypageGoods.jsp").forward(
		 * request, response);
		 */
		request.setCharacterEncoding("UTF-8");
		
		User loginUser = (User)request.getSession().getAttribute("loginUser");
		
		List<String> list = new ArrayList<>();
		Restaurant r = (Restaurant)request.getSession().getAttribute("rest");
		System.out.println(r);
		Attachment m = (Attachment)request.getSession().getAttribute("menu");
		System.out.println(m);
		
		list.add(r.getRestName());
		list.add(r.getRestGrade());
		list.add(String.valueOf(r.getRestNo()));
		list.add(r.getRestIntro());
		list.add(String.valueOf(r.getRestAtList()));
		list.add(m.getFilePath());
		list.add(m.getChangeName());
	    
	    request.setAttribute("list", list);
	    System.out.println(list);
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
