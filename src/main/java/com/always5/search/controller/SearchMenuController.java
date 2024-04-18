package com.always5.search.controller;

import java.io.IOException;
import java.util.ArrayList;

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

/**
 * Servlet implementation class Search
 */
@WebServlet("/searchMenu.sc")
public class SearchMenuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchMenuController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int restCount = new SearchService().searchListCount(); // 현재 총 가게 수 가져오기
		int currentPage = Integer.parseInt(request.getParameter("rpage"));
		
		PageInfo re = Pagination.getPageInfo(restCount, currentPage, 1, 9);
		
		
		ArrayList<Restaurant> list = new SearchService().selectSearchRest(re); 
//		System.out.println(list);
		request.setAttribute("list", list);
		request.setAttribute("re", re);
		
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/search/searchMenu.jsp");
		view.forward(request, response);
		
		
//		// 헤더의 음식별을 클릭하면
//		// 이 서블릿이 받아서
//		// searchKinds한 내용을 처리하고
//		// searchKinds 페이지로 보내준다
//		request.setCharacterEncoding("UTF-8");
//		String searchKinds = request.getParameter("searchKinds");
//		
//		SearchService sService = new SearchService();
//		ArrayList<Restaurant> list = sService.searchRestList(searchKinds);
		
		
		
		
//		String FoodCategoryNo = request.getParameter("한식 or 중식 or ...");
//		
//		switch(FoodCategoryNo) {
//		
//			case "한식":
//				
//			case "중식":
//				
//			case "일식":
//				
//			case "패스트푸드":
//				
//			case "아시안":
//				
//			default: // 에러페이지
//			
//		}
//		
//		int listCount; // 총 가게 수
//		int currentPage; // 현재 페이지 번호
//		int pageLimit; // 한 번에 출력할 페이징 바 최대 개수
//		int boardLimit; // 한 페이지 내에 보여질 게시글 최대 개수
//		
////		int maxPage; // 총 게시글 수로 정해지는 가장 마지막 페이징 바 번호
////		int startPage; // 한 페이지 안의 시작 페이징 바 번호
////		int endPage; // 한 페이지 안의 마지막 페이징 바 번호
//		// 페이징바는 없으니까 필요없지않나?
//		// 아니면 마지막 페이지 알긴 알아야하니까 필요한가?
//		
//		
//		listCount = new SearchService().searchRestListCount();
//		
//		// 음식별 클릭을 어디서 처리해줘야하지..?
//		// 자스? 서블릿..?
//		currentPage = Integer.parseInt(request.getParameter("#"));
//		pageLimit = 1;
//		boardLimit = 9;
//		
//		
//		// 배열로 받아오기
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
