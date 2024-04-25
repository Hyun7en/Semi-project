package com.always5.mainPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.mainPage.service.mainService;
import com.always5.review.rest.model.vo.Restaurant;
import com.google.gson.Gson;

/**
 * Servlet implementation class mainTopListController
 */
@WebServlet("/topList.ma")
public class mainTopListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mainTopListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    // 조횟수 제일 높은 5개 가져오기
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Restaurant> tlist = new mainService().mainTopList();
		request.setAttribute("tlist", tlist);
		System.out.println(tlist);
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(tlist, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
