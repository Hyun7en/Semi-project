package com.always5.search.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.review.rest.model.vo.Menu;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.search.service.SearchService;
import com.google.gson.Gson;

/**
 * Servlet implementation class AjaxSearchMenuListController
 */
@WebServlet("/searchMenuList.sc")
public class AjaxSearchRegionListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()searchRegionList.sc
     */
    public AjaxSearchRegionListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Restaurant> list = new SearchService().searchList(); // searchKindsList
		request.setAttribute("list", list);
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(list, response.getWriter());
		
		
		
//		String region = "";
//		StringBuilder regionBuilder = new StringBuilder(); // 문자열을 효율적으로 연결하기 위해 StringBuilder 사용
//
//		for (int i = 0; i < list.size(); i++) {
//		    region = list.get(i).getRestAddress().substring(0, 2);
//		    regionBuilder.append(region); // StringBuilder에 각 주소의 첫 두 글자를 추가
//		}
//
//		// 반복문이 끝난 후에 한 번만 region 값을 설정
//		request.setAttribute("region", regionBuilder.toString());
		
		
		
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
