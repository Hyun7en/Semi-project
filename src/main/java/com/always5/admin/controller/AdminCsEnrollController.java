package com.always5.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.admin.service.AdminCsService;
import com.always5.admin.service.AdminCsServiceImpl;
import com.always5.customerService.model.vo.CsDetail;


/**
 * Servlet implementation class AdminCsEnrollController
 */
@WebServlet("/enroll.AdminCs")
public class AdminCsEnrollController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCsEnrollController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		AdminCsService adcsService = new AdminCsServiceImpl();
//		
//		ArrayList<CsDetail> list = adcsService.selectCategoryList();
//		
//		//응답뷰 요청
//		request.setAttribute("categorys", list);
		request.getRequestDispatcher("WEB-INF/views/admin/adminCsEnrollForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
