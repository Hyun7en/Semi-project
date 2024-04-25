package com.always5.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.always5.user.model.vo.User;
import com.always5.user.service.UserService;
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
		request.setCharacterEncoding("UTF-8");
		
		User loginUser = (User)request.getSession().getAttribute("loginUser");
		System.out.println(loginUser);
		
		String updateId = request.getParameter("updateId");
		User u = new User(updateId);
		System.out.println(updateId);
		u.setUserNo(loginUser.getUserNo());
		
		int result = new UserServiceImpl().updateUserID(u);
		System.out.println(u);
		
		if(result > 0) {
            HttpSession session = request.getSession();
           
            request.setAttribute("errorMsg", "아이디 변경 성공");
            request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
        } else {
            request.setAttribute("errorMsg", "아이디 변경 실패");
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
