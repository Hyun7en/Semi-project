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
@WebServlet("/updatename.ui")
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

		User u = new User();
		u.setUserId(request.getParameter("Nickname"));
		u.setUpdateId(request.getParameter("updateNickName"));

		User updateUserName = new UserServiceImpl().updateUserNickName(u);

		if (updateUserName == null) {
			request.setAttribute("errorMsg", "닉네임 수정 실패");
			request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
		} else { // 성공
			// 세션에 저장된 loginUser의 닉네임을 수정된 닉네임으로 변경
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "성공적으로 수정했습니다.");
			session.setAttribute("loginUser", updateUserName);
			
			response.sendRedirect(request.getContextPath() + "/MyPage.ui");
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
