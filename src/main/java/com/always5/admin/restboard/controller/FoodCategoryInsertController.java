package com.always5.admin.restboard.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.admin.restboard.service.AdminRestServiceImpl;
import com.always5.review.rest.model.vo.FoodCategory;

/**
 * Servlet implementation class FoodCategoryInsertController
 */
@WebServlet("/fcategory.in")
public class FoodCategoryInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FoodCategoryInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String foodCategoryName = request.getParameter("foodCategoryName");
		
		FoodCategory f = new FoodCategory(foodCategoryName);
		
		int result = new AdminRestServiceImpl().insertFoodCategory(f);
		
		if (result > 0) {
			response.sendRedirect(request.getContextPath());
		} else {
			request.setAttribute("errorMsg", "카테고리 추가 실패");
			request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
