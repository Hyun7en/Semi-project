package com.always5.mainPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.common.vo.Attachment;
import com.always5.mainPage.service.mainService;
import com.always5.review.rest.model.vo.Restaurant;
import com.google.gson.Gson;

/**
 * Servlet implementation class mainTopListController
 */
@WebServlet("/topList.ma")
public class AjaxMainTopListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxMainTopListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    // 조횟수 제일 높은 5개 가져오기
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Restaurant> tlist = new mainService().mainTopList();

		for (Restaurant r : tlist) {
			//Restaurant의 key를 이용해서 Attachment가져오기
			Attachment at = new mainService().pickRestPic(r.getRestNo()); 
			r.setAt(at);

		}
		
		request.setAttribute("tlist", tlist);

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
