package com.always5.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.always5.user.model.vo.User;
import com.always5.user.service.UserServiceImpl;

/**
 * Servlet implementation class UserSignoutController
 */
@WebServlet("/signout.u")
public class UserSignoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserSignoutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//sql의 status를 N으로 변경하여 회원의 탈퇴를 진행하는 기능
		//1. 세션에 저장된 사용자의 아이디를 받아옴
		//2. 받아온 아이디를 이용하여 status를 N으로 변경
		//3. 세션 무효화
		//4. 메인페이지로 이동
		
		request.setCharacterEncoding("UTF-8");
		
		User loginUser = (User)request.getSession().getAttribute("loginUser");
		request.setAttribute("loginUser", loginUser);
		
		HttpSession session = request.getSession();
		
		if(loginUser != null) {
			//user_status를 n으로 변경
			int result = new UserServiceImpl().deleteUser(loginUser);
			HttpSession Session = request.getSession();
			Session.invalidate();
			response.sendRedirect(request.getContextPath());
		} else {
			session.setAttribute("errorMsg", "회원탈퇴에 실패하였습니다.");
			request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
		
		//null값 예외처리
		//로그인이 되어있지 않은 상태에서 회원탈퇴를 시도하면 에러페이지로 이동

	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
