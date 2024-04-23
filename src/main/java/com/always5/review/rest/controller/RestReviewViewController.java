package com.always5.review.rest.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.common.template.Pagination;
import com.always5.common.vo.PageInfo;
import com.always5.review.model.vo.Review;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.review.rest.service.RestServiceImpl;

/**
 * Servlet implementation class RestReviewViewController
 */
@WebServlet("/review.re")
public class RestReviewViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestReviewViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int restNo = Integer.parseInt(request.getParameter("rno"));
		
		int listCount = new RestServiceImpl().selectReviewCount(restNo);
		int currentPage = Integer.parseInt(request.getParameter("pno"));

		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 10);
		
		System.out.println(pi);
		Restaurant rest = new RestServiceImpl().selectRest(restNo);
		ArrayList<Review> reviewList = new RestServiceImpl().selectReviewList(restNo, pi);
		ArrayList<Integer> ratingCount = new RestServiceImpl().selectRatingCount(restNo);
		System.out.println(reviewList.size());
//		int[] reviewList = new int[5];
//		for(int i = 0; i < ratingCount.size(); i++) {
//			reviewList[i] = ratingCount.get(i);
//		}
		
		request.setAttribute("rest", rest);
		request.setAttribute("reviewList", reviewList);
		request.setAttribute("ratingCount", ratingCount);
		request.setAttribute("pi", pi);
		request.getRequestDispatcher("WEB-INF/views/rest/restReviewView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
