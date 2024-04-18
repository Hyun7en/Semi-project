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
 * Servlet implementation class userPwdController
 */
@WebServlet("/updatepwd.ui")
public class UserUpdatePwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserUpdatePwdController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		User u = new User();
		
		u.setUserPwd(request.getParameter("UserPwd"));
		u.setUserId(request.getParameter("UserId"));
		u.setUpdateId(request.getParameter("UpdatePwd"));

		User updateUserPwd = new UserServiceImpl().updateUserPwd(u);

		if (updateUserPwd == null) {
			request.setAttribute("errorMsg", "비밀번호 수정 실패");
			request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "성공적으로 수정했습니다.");
			session.setAttribute("loginUser", updateUserPwd);
			
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
