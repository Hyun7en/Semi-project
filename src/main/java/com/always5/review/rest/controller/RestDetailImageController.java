package com.always5.review.rest.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.common.vo.Attachment;
import com.always5.review.rest.service.RestServiceImpl;
import com.google.gson.Gson;

/**
 * Servlet implementation class RestDetailImageController
 */
@WebServlet("/detailImg.re")
public class RestDetailImageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestDetailImageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
<<<<<<< HEAD:src/main/java/com/always5/review/rest/controller/RestDetailImageController.java
		int restNo = Integer.parseInt(request.getParameter("restNo"));
		
		ArrayList<Attachment> list = new RestServiceImpl().selectAttachmentList(restNo);
		
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(list, response.getWriter());
=======
	
>>>>>>> b9a790476de0be69a4c33bb446eb23b69b041648:src/main/java/com/always5/admin/controller/AdminRestRegistFormController.java
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
