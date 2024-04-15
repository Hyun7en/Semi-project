package com.always5.review.rest.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.common.vo.Attachment;
import com.always5.review.model.vo.Review;
import com.always5.review.rest.model.vo.Menu;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.review.rest.service.RestServiceImpl;

/**
 * Servlet implementation class restMainViewController
 */
@WebServlet("/main.re")
public class RestMainViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestMainViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. 가게 정보
		// - 가게 이름, 가게 소개, 가게 주소, 가게 번호, 가게 운영시간, 가게 별점
		// 		> 가게 별점은 총 평균이므로 리뷰 별점을 다 더해서 정보 수정해야 함
		// - 가게 사진
		// 2. 음식 카테고리명
		// 3. 메뉴 카테고리명
		// 4. 총 찜 수 (해당 rest_no 찜 중 status Y인 행 총 카운트)
		// 5. 해당 가게 리뷰
		// - 리뷰 별점, 내용, 작성자 이름, 등록일
		// - 리뷰 사진
		
		int restNo = Integer.parseInt(request.getParameter("rno"));
		
		RestServiceImpl rService = new RestServiceImpl();
		
		// 가게 정보, 가게 사진, 음식 카테고리명
		Restaurant rest = rService.selectRest(restNo);
		
		// 메뉴 카테고리명
		ArrayList<Menu> mcList = rService.selectMenuCategoryList(restNo);
		
		// 총 찜 수
		int totalDibs = rService.selectTotalDibs(restNo);
		
		// 리뷰 별점, 내용, 작성자 이름, 등록일, 리뷰 사진
		ArrayList<Review> reviewList = rService.selectReviewList(restNo);
		
		request.setAttribute("rest", rest);
		request.setAttribute("mcList", mcList);
		request.setAttribute("totalDibs", totalDibs);
		request.setAttribute("reviewList", reviewList);

		request.getRequestDispatcher("WEB-INF/views/rest/restMainView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
