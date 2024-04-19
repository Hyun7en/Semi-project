package com.always5.customerService.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.customerService.model.vo.CsType;
import com.always5.customerService.service.CsCenterServiceImpl;
import com.google.gson.Gson;

/**
 * Servlet implementation class AjaxCsCenterController
 */
@WebServlet("/csCenter.ax")
public class AjaxCsCenterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxCsCenterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int csTypeNo = (Integer) null;
		
		ArrayList<CsType> csTypeList = new CsCenterServiceImpl().selectCsTypeList(csTypeNo);
	
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(csTypeList);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
