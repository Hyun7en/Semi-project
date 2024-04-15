package com.always5.user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.user.model.vo.User;
import com.always5.user.service.UserServiceImpl;

/**
 * Servlet implementation class UserUpdateController
 */
@WebServlet("/UserUpdate.me")
public class UserUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String authority = request.getParameter("authority");
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		String nickName = request.getParameter("nickName");
		String userBirth = request.getParameter("userBirth");
		String userGender = request.getParameter("userGender");
		String userPhone = request.getParameter("userPhone");
		String userEmail = request.getParameter("userEmail");
		String userAddress = request.getParameter("userAddress");
		String point = request.getParameter("point");
		
		User u = new User(authority,	
											userId,
											userPwd,
											userName,
											nickName,
											userBirth,
											userGender,
											userPhone,
											userEmail,
											userAddress,
											point
											);
		
		int result = new UserServiceImpl().insertUser(u);
		
		if (result > 0) {
			response.sendRedirect(request.getContextPath() + "/myPage.me");
		} else {
			request.setAttribute("errorMsg", "회원정보 수정 실패");
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
