package com.always5.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.always5.user.model.vo.User;
import com.always5.user.service.UserServiceImpl;

/**
 * Servlet implementation class UserChangeNameController
 */
@WebServlet("/updatename.u")
public class UserUpdateNameController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserUpdateNameController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		User loginUser = (User)request.getSession().getAttribute("loginUser");
		System.out.println(loginUser);
		
		String updateName = request.getParameter("updateName");
		User u = new User(updateName);
		u.setNickName(updateName);
		
		u.setUserNo(loginUser.getUserNo());
		System.out.println(loginUser);
		
		
		int result = new UserServiceImpl().updateUserNickName(u);
		System.out.println(u);
		
		if(result > 0) {
            HttpSession session = request.getSession();
           
            request.setAttribute("errorMsg", "닉네임 변경 성공");
            request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
        } else {
            request.setAttribute("errorMsg", "닉네임 변경 실패");
            request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
		
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
