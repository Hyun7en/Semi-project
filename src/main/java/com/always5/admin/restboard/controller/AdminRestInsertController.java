package com.always5.admin.restboard.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.always5.admin.restboard.service.AdminRestServiceImpl;
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		if (ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 1024 * 1024 * 15;

			String savePath = request.getSession().getServletContext()
					.getRealPath("/resources/file/upfile/rest_upfile/");
			// 전달된 파일 업로드(request 변환)

			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8",
					new MyFileRenamePolicy());

			String restName = multiRequest.getParameter("restName");
			String restAddress = multiRequest.getParameter("restAddress");
			String restPhone = multiRequest.getParameter("restPhone");
			String restIntro = multiRequest.getParameter("restIntro");
			String restOperDate = multiRequest.getParameter("restOperDate");
			String foodCategoryNo = multiRequest.getParameter("foodCategoryNo");

			Restaurant r = new Restaurant(restName, restAddress, restPhone, restIntro, restOperDate, foodCategoryNo);

			Attachment at = null;
			if (multiRequest.getOriginalFileName(multiRequest.getParameter("restImg")) != null) {
				// 첨부파일이 존재할 경우
				at = new Attachment();
				at.setChangeName(multiRequest.getFilesystemName(multiRequest.getParameter("restImg")));
				at.setFilePath("resources/file/upfile/rest_upfile/");

			}
			//  서비스요청
			int restNo = new AdminRestServiceImpl().insertRestaurant(r, at);
			
			// 응답뷰 요청
			if (restNo > 0) { // 성공 -> 메뉴등록페이지
				// 가게 정보를 DB에 저장한 후에 가져오기
				
				response.sendRedirect(request.getContextPath() + "/RestMenu.ad?restNo=" + restNo);

			} else { // 실패 -> 업로드된 파일 삭제해주고 에러페이지
				
				if (at != null) {
					new File(savePath + at.getChangeName()).delete();
				}

				request.setAttribute("errorMsg", "일반게시글 작성 실패");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			}
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
