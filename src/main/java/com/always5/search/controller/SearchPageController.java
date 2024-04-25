package com.always5.search.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.common.template.Pagination;
import com.always5.common.vo.PageInfo;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.search.service.SearchService;
import com.google.gson.Gson;

/**
 * Servlet implementation class SearchPageController
 */

//순수 검색
@WebServlet("/search.sc")
public class SearchPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchPageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 클라이언트가 검색한 키워드를 header에서 받아서 가져와서
		// db로 넘겨서 포함된 값을 가져옴
		// 가져온 값을 페이지몇개로 보여줄건가
		// 
		
		
		
		
		SearchService sService = new SearchService();
		
		// 클라이언트가 검색한 키워드를 가져와서
		String keyword = request.getParameter("keyword");
		HashMap<String, String> map = new HashMap<>();
		map.put("keyword", keyword);
		
		// 그 키워드로 검색한 검색한 레스토랑 수
		int restCount = sService.searchrListCount(map); // 키워드에 맞는 가게 가져오기
		
		
		
		// 그 키워드로 검색한 검색한 레스토랑 수
		
		int currentPage = Integer.parseInt(request.getParameter("rpage"));
		
		PageInfo re = Pagination.getPageInfo(restCount, currentPage, 1, 9);
		ArrayList<Restaurant> rlist = sService.selectrSearchList(map, re);
		
		
		// list 받아와서 Search.jps로 넘기기
		request.setAttribute("rlist", rlist);
		request.setAttribute("re", re);
		request.setAttribute("keyword", keyword);
//		
//		response.setContentType("application/json; charset=UTF-8");
//		new Gson().toJson(rlist, response.getWriter());

		
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/search/Search.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
