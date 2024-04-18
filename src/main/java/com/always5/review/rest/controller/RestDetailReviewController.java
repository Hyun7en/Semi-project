package com.always5.review.rest.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.review.model.vo.Review;
import com.always5.review.rest.service.RestServiceImpl;
import com.google.gson.Gson;

/**
 * Servlet implementation class RestDetailReviewController
 */
@WebServlet("/detailReview.re")
public class RestDetailReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestDetailReviewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int restNo = Integer.parseInt(request.getParameter("restNo"));
//		int restNo = 1;
		
		RestServiceImpl rService = new RestServiceImpl();
		
		// 리뷰 별점, 내용, 작성자 이름, 등록일, 리뷰 사진
		ArrayList<Review> reviewList = rService.selectReviewList(restNo);
		
		// 리뷰 별점 개수 (별점 5부터 1까지의 횟수 차례대로 전달)
		ArrayList<Integer> ratingCount = rService.selectRatingCount(restNo);
		
//		for(int i = 0; i < ratingCount.size(); i++) {
//			System.out.println(ratingCount.get(i));
//		}
		
		HashMap<String, ArrayList> map = new HashMap<>();
		map.put("reviewList", reviewList);
		map.put("ratingCount", ratingCount);
		
//		for(int i = 0; i < ratingCount.size(); i++) {
//			System.out.println(map.get("ratingCount").get(i));
//		}
	
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(map, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
