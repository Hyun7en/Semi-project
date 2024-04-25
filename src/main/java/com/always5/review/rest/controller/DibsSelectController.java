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
		Dibs userDibs = new Dibs(userNo, restNo);
		
		// 가져와서 카운트 업데이트 하는 것까지 한 번에 서비스로 묶어서 트랜잭션 되도록 + 커밋 롤백 해줘야 함
		HashMap map = new RestServiceImpl().updateDibs(userDibs);

//		HashMap map = new HashMap<>();
//		map.put("userDibs", userDibs);
//		map.put("dibsCount", dibsCount);
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
