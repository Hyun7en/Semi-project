package com.always5.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.admin.model.dao.AdminCsDao;
import com.always5.admin.service.AdminCsService;
import com.always5.admin.service.AdminCsServiceImpl;
import com.always5.customerService.model.vo.CsDetail;

/**
 * Servlet implementation class AdminCsDetailController
 */
@WebServlet("/detail.AdminCs")
public class AdminCsDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCsDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int boardNo = Integer.parseInt(request.getParameter("bno"));
		
		AdminCsService adcsService = new AdminCsServiceImpl();
		
		
		CsDetail csDetail = adcsService.selectBoard(boardNo);
		
			request.setAttribute("csDetail", csDetail);
			
			request.getRequestDispatcher("WEB-INF/views/admin/adminCsDetailView.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
