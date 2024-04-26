package com.always5.search.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.common.vo.Attachment;
import com.always5.mainPage.service.mainService;
import com.always5.review.rest.model.vo.Menu;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.search.service.SearchService;
import com.google.gson.Gson;

/**
 * Servlet implementation class AjaxSearchMenuListController
 */
@WebServlet("/searchMenuList.sc")
public class AjaxSearchMenuListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()searchRegionList.sc
     */
    public AjaxSearchMenuListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Restaurant> mlist = new SearchService().MenuSelectSearchRest(); // searchKindsList
		
		for (Restaurant r : mlist) {
			//Restaurant의 key를 이용해서 Attachment가져오기
			Attachment at = new SearchService().pickRestPic(r.getRestNo()); 
			r.setAt(at);
			
		}
		
		request.setAttribute("mlist", mlist);
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(mlist, response.getWriter());
		
		
		
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
