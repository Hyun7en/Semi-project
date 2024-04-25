package com.always5.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.admin.service.AdminCsServiceImpl;
import com.always5.customerService.model.vo.CsDetail;

/**
 * Servlet implementation class AdminCsInsertController
 */
@WebServlet("/insert.AdminCs")
public class AdminCsInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCsInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int csKeywordNo = Integer.parseInt(request.getParameter("csKeyword"));
        String csDetailTitle = request.getParameter("csDetailTitle");
        String csDetailContent = request.getParameter("csDetailContent");
        String csDetailWriter = request.getParameter("csDetailWriter");
        
		CsDetail cs = new CsDetail(
									csKeywordNo,
									csDetailTitle,
									csDetailContent,
									csDetailWriter
								   );
		
		int result = new AdminCsServiceImpl().insertAdminCs(cs);
		
		if (result > 0) {
			response.sendRedirect(request.getContextPath() + "/list.AdminCs");
		} else {
			request.setAttribute("errorMsg", "CS 등록 실패");
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
