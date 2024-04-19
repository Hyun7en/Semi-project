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

/**
 * Servlet implementation class CsTypeListController
 */
@WebServlet("/list.csType")
public class CsTypeListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CsTypeListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int csType = new CsType().getCsTypeNo();
		
		
		ArrayList<CsType> csTypeList = new CsCenterServiceImpl().selectCsTypeList(csType);
		
		
		request.setAttribute("csType", csType);
		request.setAttribute("csTypeList", csTypeList);
		
		request.getRequestDispatcher("WEB-INF/views/customerService/csCenter.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
