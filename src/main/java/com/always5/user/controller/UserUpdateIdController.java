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
		
		// 로그인한 유저의 정보를 가져와서 loginUser에 담기
		request.setAttribute("loginUser", loginUser);
		System.out.println(loginUser);
		
		// 로그인한 유저의 아이디를 변경할 아이디로 수정
		User updateUserID = new UserServiceImpl().updateUserID(loginUser);
		System.out.println(updateUserID);
		
		if (updateUserID == null) {
			// 실패 메세지 출력 후 에러페이지로 이동
			request.setAttribute("errorMsg", "아이디 수정 실패");
			request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
		} else {
			// 세션에 있는 loginUser의 아이디를 수정된 아이디로 변경	
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", updateUserID);
			
			// 성공 메세지 출력 후 마이페이지로 이동
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
