package com.always5.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.admin.service.AdminCsServiceImpl;


/**
 * Servlet implementation class AdminCsDeleteController
 */
@WebServlet("/delete.AdminCs")
public class AdminCsDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCsDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//데이터가져오기
		int boardNo = Integer.parseInt(request.getParameter("bno"));
		
		//delete문 실행하기 service -> deleteNotice();
		int result = new AdminCsServiceImpl().deleteAdminCs(boardNo);
		
		
		if (result > 0) {
			request.getSession().setAttribute("alertMsg", "CS 삭제완료.");
			response.sendRedirect(request.getContextPath() + "/list.AdminCs");
		} else {
			request.setAttribute("errorMsg", "공지사항 삭제 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
