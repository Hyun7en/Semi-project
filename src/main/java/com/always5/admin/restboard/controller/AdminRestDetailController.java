package com.always5.admin.restboard.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.admin.restboard.service.AdminRestService;
import com.always5.admin.restboard.service.AdminRestServiceImpl;
import com.always5.review.rest.model.vo.Restaurant;

/**
 * Servlet implementation class AdminRestListDetailController
 */
@WebServlet("/restdetaillist.ad")
public class AdminRestDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminRestDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int restNo = Integer.parseInt(request.getParameter("rno"));
		
		AdminRestService rService = new AdminRestServiceImpl();
		//조회수 증가 + 상세조회
		Restaurant r = new AdminRestServiceImpl().increaseCount(restNo);
	
		if(r != null) {
			
			request.getRequestDispatcher("WEB-INF/views/admin/adminRestRegistForm.jsp").forward(request, response);
		} else {
			request.setAttribute("errorMsg", "상세조회 실패");
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
