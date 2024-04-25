package com.always5.review.rest.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.always5.common.vo.Attachment;
import com.always5.common.vo.MyFileRenamePolicy;
import com.always5.review.model.vo.Review;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.review.rest.service.RestServiceImpl;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class ReviewInsertController
 */
@WebServlet("/insertReview.re")
public class ReviewInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("도착!");
		request.setCharacterEncoding("UTF-8");
		
		// 들어온 파일 형식이 multipart가 맞을 때
		if (ServletFileUpload.isMultipartContent(request)) {
			// 이미지의 최대 용량
			int maxSize = 1024 * 1024 * 10;
			
			// 이미지를 저장할 경로 (getRealPath까지가 webapp의 경로)
			String savePath = request.getSession().getServletContext().getRealPath("/resources/file/upfile/review_upfile");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			Review r = new Review();
			r.setRestNo(multiRequest.getParameter("rno"));
			r.setReviewRating(multiRequest.getParameter("reviewRating"));
			r.setReviewContent(multiRequest.getParameter("reviewContent"));
			r.setUserNo(multiRequest.getParameter("userNo"));
			
			ArrayList<Attachment> list = new ArrayList<>();
			for(int i = 1; i <= 3; i++) {
				String key = "file" + i;
				
				// 첨부 파일이 존재할 경우
				if(multiRequest.getOriginalFileName(key) != null) {
					Attachment at = new Attachment();
					at.setChangeName(multiRequest.getFilesystemName(key));
					at.setFilePath("resources/file/upfile/review_upfile/");
					
					list.add(at);
				}
			}

			int result = new RestServiceImpl().insertReview(r, list);
			System.out.println(result);
			int restNo = Integer.parseInt(multiRequest.getParameter("restNo"));
			ArrayList<Review> reviewList = new ArrayList<>();
			Restaurant rest = null;
			ArrayList<Integer> ratingCount = new ArrayList<>();
			
			if (result > 0) {
				reviewList = new RestServiceImpl().selectReviewList(restNo);
				rest = new RestServiceImpl().selectRest(restNo);
				ratingCount = new RestServiceImpl().selectRatingCount(restNo);

				request.setAttribute("reviewList", reviewList);
				request.setAttribute("rest", rest);
				request.setAttribute("ratingCount", ratingCount);
				request.setAttribute("alertMsg", "리뷰 작성에 성공했습니다.");
				response.sendRedirect(request.getContextPath() + "/review.re?rno=" + rest.getRestNo() + "&pno=1");
			} else {
				request.setAttribute("errorMsg", "리뷰 작성에 실패했습니다.");
				request.getRequestDispatcher("/WEB-INF/views/common/errorPage").forward(request, response);
			}
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
