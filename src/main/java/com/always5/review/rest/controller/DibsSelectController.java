package com.always5.review.rest.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.review.rest.model.vo.Restaurant;
import com.always5.review.rest.service.RestServiceImpl;
import com.always5.user.model.vo.Dibs;
import com.google.gson.Gson;

/**
 * Servlet implementation class DibsSelectController
 */
@WebServlet("/selectDibs.re")
public class DibsSelectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DibsSelectController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userNo = request.getParameter("userNo");
		String restNo = request.getParameter("restNo");
		
		// 사용자의 찜 여부 확인해서 update 할지 delete 할지 결정
		Dibs dibsInfo = new Dibs(userNo, restNo);
		Dibs userDibs = new RestServiceImpl().checkDibs(dibsInfo);
		System.out.println("null 아니어야 해" + userDibs);
		
		int result = 0;
		String check = null;
		// update 나 delete 후 해당 rest likeNo 업데이트
		if (userDibs != null) {
			result = new RestServiceImpl().deleteDibs(dibsInfo);
			if (result > 0) {
				check = "D";
			} 
		} else {
			result = new RestServiceImpl().insertDibs(dibsInfo);
			if (result > 0) {
				check = "U";
			}
		}
		System.out.println(result);
		System.out.println(check);
		
		// 수정된 사용자 찜 여부와 수정된 likeNo 보내기
		String dibsCount = new RestServiceImpl().updateDibsCount(restNo, check);
		System.out.println(dibsCount);
		HashMap map = new HashMap<>();
		map.put("userDibs", userDibs);
		map.put("dibsCount", dibsCount);
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
