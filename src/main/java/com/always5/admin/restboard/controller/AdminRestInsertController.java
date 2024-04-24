package com.always5.admin.restboard.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.always5.common.vo.Attachment;
import com.always5.common.vo.MyFileRenamePolicy;
import com.always5.review.rest.model.vo.Restaurant;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class AdminRestInsertController
 */
@WebServlet("/restinsert.ad")
public class AdminRestInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminRestInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String restName = request.getParameter("restName");
		String restAddress = request.getParameter("restAddress");
		String restPhone = request.getParameter("restPhone");
		String restIntro = request.getParameter("restIntro");
		String restOperDate = request.getParameter("restOperDate");
		String foodCategoryNo = request.getParameter("foodCategoryNo");
		
		if (ServletFileUpload.isMultipartContent(request)) {
			String savePath = request.getSession().getServletContext().getRealPath("/resources/file/upfile/rest_upfile/");
			// 전달된 파일 업로드(request 변환)
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
						
			ArrayList<Attachment> restAtList = new ArrayList<>(); 
			for (int i = 1; i <= 4; i++) {
				String key = "file" + i;
				if (multiRequest.getOriginalFileName(key) != null) {
					// 첨부파일이 존재할 경우
					// Attachment 생성 -> 원본명, 수정된파일명, 폴더경로, 파일레벨 => list담기
					Attachment at = new Attachment();
					at.setOriginName(multiRequest.getOriginalFileName(key));
					at.setChangeName(multiRequest.getFilesystemName(key));
					at.setFilePath("resources/file/upfile/rest_upfile/");
	
					at.setFileLevel(i == 1 ? 1 : 2);
	
					restAtList.add(at);
				}
			}
		
		Restaurant r = new Restaurant(
									restName,
									restAddress,
									restPhone,
									restIntro,
									restOperDate,
									foodCategoryNo,
									restAtList
									);
		
		response.sendRedirect(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
