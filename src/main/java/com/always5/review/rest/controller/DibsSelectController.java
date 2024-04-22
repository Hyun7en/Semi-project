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
		
		// update 나 delete 후 해당 rest likeNo 업데이트
		
		// 수정된 사용자 찜 여부와 수정된 likeNo 보내기
		
		
//		String userNo = request.getParameter("userNo");
//		String restNo = request.getParameter("restNo");
//		
//		Dibs dibsInfo = new Dibs(userNo, restNo);
//		
//		Dibs dibs = new RestServiceImpl().checkDibs(dibsInfo);
//		Dibs userDibs = null;
//		
//		System.out.println(dibs);
//		if (dibs == null) {
//			userDibs = new RestServiceImpl().insertDibs(dibsInfo);
//			
//			System.out.println(userDibs);
//		} else {
//			userDibs = new RestServiceImpl().deleteDibs(dibsInfo);
//		}
//		
//		System.out.println("delete 되었을까?");
//		
//		Restaurant dibsCount = new RestServiceImpl().selectDibsCount(restNo);
//		
//		System.out.println(dibsCount);
//		
//		HashMap map = new HashMap<>();
//		map.put("userDibs", userDibs);
//		map.put("dibsCount", dibsCount);
//		response.setContentType("application/json; charset=utf-8");
//		new Gson().toJson(map, response.getWriter());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}