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
 * Servlet implementation class SelectUserDibsController
 */
@WebServlet("/dibsCount.re")
public class DibsInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DibsInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userNo = request.getParameter("userNo");
		String restNo = request.getParameter("restNo");
		
		Dibs dibsInfo = new Dibs(userNo, restNo);
		
		Dibs userDibs = new RestServiceImpl().checkDibs(dibsInfo);
		Restaurant dibsCount = new RestServiceImpl().selectDibsCount(restNo);
		
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
