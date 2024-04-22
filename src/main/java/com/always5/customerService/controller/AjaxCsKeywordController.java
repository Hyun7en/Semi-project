package com.always5.customerService.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.customerService.model.vo.CsKeyword;
import com.always5.customerService.service.CsCenterServiceImpl;
import com.google.gson.Gson;

/**
 * Servlet implementation class AjaxCsKeywordValue
 */
@WebServlet("/csKeyword.ax")
public class AjaxCsKeywordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxCsKeywordController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int csTypeNo = Integer.parseInt(request.getParameter("csTypeNo"));
		
		ArrayList<CsKeyword> csKeywordList = new CsCenterServiceImpl().selectCskeywordList(csTypeNo );
		
		response.setContentType("application/json; charset=utf-8");
		
		new Gson().toJson(csKeywordList,  response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
