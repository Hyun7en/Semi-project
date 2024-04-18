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
import com.kh.board.model.vo.Reply;
import com.kh.board.service.BoardService;

/**
 * Servlet implementation class AjaxCsCenterController
 */
@WebServlet("/AjaxCsCenter")
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
		int csCode = Integer.parseInt(request.getParameter("bno"));
		
		ArrayList<CsType> list = new CsCenterServiceImpl().selectCsType(boardNo);
		//reply_no, reply_content, user_id, create_date -> String(YY/MM/DD HH:MI)
	
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(list, response.getWriter());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
