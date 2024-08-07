package com.always5.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.admin.service.AdminCsServiceImpl;
import com.always5.common.template.Pagination;
import com.always5.common.vo.PageInfo;
import com.always5.customerService.model.vo.CsDetail;

/**
 * Servlet implementation class AdminCsListController
 */
@WebServlet("/list.AdminCs")
public class AdminCsListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCsListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				//----------- 페이징처리---------------------------
				int AdminCslistCount = new AdminCsServiceImpl().selectAdminCsListCount(); //현재 총 게시글 수 
			        
			        // cpage 요청 매개변수 값 확인
			        String cpageParam = request.getParameter("cpage");
			        
			        // 기본값 설정
			        int currentPage = 1; 
			        
			        if (cpageParam != null && !cpageParam.isEmpty()) {
			            currentPage = Integer.parseInt(cpageParam);
			        }
				
				PageInfo pi = Pagination.getPageInfo(AdminCslistCount, currentPage, 10, 5);
				
				ArrayList<CsDetail> list = new AdminCsServiceImpl().selectAdminCsList(pi);
				
				
					request.setAttribute("list", list);
					request.setAttribute("pi", pi);
					
					request.getRequestDispatcher("WEB-INF/views/admin/adminCsListView.jsp").forward(request, response);
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
