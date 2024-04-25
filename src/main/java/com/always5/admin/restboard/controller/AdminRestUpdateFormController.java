package com.always5.admin.restboard.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.admin.restboard.service.AdminRestServiceImpl;
import com.always5.review.rest.model.vo.Restaurant;

/**
 * Servlet implementation class AdminRestUpdateFormController
 */
@WebServlet("/restupdate.ad")
public class AdminRestUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminRestUpdateFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 가게 번호를 파라미터로 받아옴
        int restNo = Integer.parseInt(request.getParameter("rno"));

        // MyBatis를 사용하여 가게 정보를 검색
        AdminRestServiceImpl restService = new AdminRestServiceImpl();
        Restaurant restaurant = restService.getRestaurantByNo(restNo);

        // 가게 정보를 request에 저장하여 JSP 페이지로 전달
        request.setAttribute("restaurant", restaurant);
        request.getRequestDispatcher("/admin/adminRestupdateForm.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
