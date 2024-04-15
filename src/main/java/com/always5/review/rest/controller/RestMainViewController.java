package com.always5.review.rest.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.review.model.vo.Review;
import com.always5.review.rest.model.vo.MenuCategory;
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
		int restNo = Integer.parseInt(request.getParameter("rno"));
		
		RestServiceImpl rService = new RestServiceImpl();
		
		Restaurant rest = rService.selectRest(restNo);
//		ArrayList<Menu> list = new RestService().selectMenuList(restNo);
		ArrayList<MenuCategory> mcList = rService.selectMenuCategoryList(restNo);
		ArrayList<Review> reviewList = rService.selectReviewList(restNo);
		
		request.setAttribute("rest", rest);
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
