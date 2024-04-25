package com.always5.admin.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.admin.service.AdminCsService;
import com.always5.admin.service.AdminCsServiceImpl;
import com.always5.common.template.Pagination;
import com.always5.common.vo.PageInfo;
import com.always5.customerService.model.vo.CsDetail;

/**
 * Servlet implementation class AdminCsSearchController
 */
@WebServlet("/search.AdminCs")
public class AdminCsSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCsSearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String condition = request.getParameter("condition"); // writer || title || content
		String keyword = request.getParameter("keyword"); //사용자가 입력한 키워드값
		
		HashMap<String, String> map = new HashMap<>();
		map.put("condition", condition);
		map.put("keyword", keyword);
		
		AdminCsService adcsService = new AdminCsServiceImpl();
		
		int searchCount = adcsService.selectAdminCsSearchCount(map);
		int currentPage = Integer.parseInt(request.getParameter("cpage")); //페이지정보
		
		PageInfo pi = Pagination.getPageInfo(searchCount, currentPage, 10 , 5);
		ArrayList<CsDetail> list = adcsService.selectAdminCsSearchList(map, pi);
		
		request.setAttribute("list", list);
		request.setAttribute("pi", pi);
		request.setAttribute("condition", condition);
		request.setAttribute("keyword", keyword);
		
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
