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
 * Servlet implementation class userIdUpdateController
 */
@WebServlet("/updateid.u")
public class UserUpdateIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserUpdateIdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		User loginUser = (User)request.getSession().getAttribute("loginUser");
		
		
		request.setAttribute("loginUser", loginUser);
		System.out.println(loginUser);
		
		User updateUserID = new UserServiceImpl().updateUserID(loginUser);
		System.out.println(updateUserID);
		
		if (updateUserID == null) {
			request.setAttribute("errorMsg", "아이디 수정 실패");
			request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", updateUserID);
			request.setAttribute("errorMsg", "성공적으로 수정했습니다.");
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
