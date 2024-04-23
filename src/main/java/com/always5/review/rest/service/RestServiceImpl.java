package com.always5.review.rest.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.always5.common.template.Template;
import com.always5.common.vo.Attachment;
import com.always5.common.vo.PageInfo;
import com.always5.review.model.vo.Review;
import com.always5.review.rest.model.dao.RestDao;
import com.always5.review.rest.model.vo.Menu;
import com.always5.review.rest.model.vo.Restaurant;
import com.always5.user.model.vo.Dibs;

public class RestServiceImpl implements RestService{
	private RestDao restDao = new RestDao();
	
	// 가게 메인 - 가게 정보 조회
	@Override
	public Restaurant selectRest(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		Restaurant rest = restDao.selectRest(sqlSession, restNo);
		
		if (rest != null) {
			ArrayList<Attachment> restAtList = restDao.selectRestAttachmentList(sqlSession, restNo);
			rest.setRestAtList(restAtList);
		} 
		
		sqlSession.close();
		return rest;
	}
	
	// 가게 메인 - 가게 메뉴 카테고리 조회
	@Override
	public ArrayList<Menu> selectMenuCategoryList(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Menu> mcList = restDao.selectMenuCategoryList(sqlSession, restNo);
		
		sqlSession.close();
		return mcList;
	}

	// 가게 찜 - 로그인한 사용자 찜 여부
	@Override
	public Dibs checkDibs(Dibs dibsInfo) {
		SqlSession sqlSession = Template.getSqlSession();
		Dibs dibs = restDao.checkDibs(sqlSession, dibsInfo);
		
		sqlSession.close();
		return dibs;
	}
	
	// 가게 찜 - 가게 총 찜 개수 조회
	@Override
	public Restaurant selectDibsCount(String restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		Restaurant dibsCount = restDao.selectDibsCount(sqlSession, restNo);
		
		sqlSession.close();
		return dibsCount;
	}
	
	// 가게 찜 - 사용자 찜 여부 수정 및 총 찜 개수 수정
	@Override
	public HashMap updateDibs(Dibs dibsInfo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		// 사용자 찜 여부 조회
		Dibs userDibs = new RestServiceImpl().checkDibs(dibsInfo);
		
		Restaurant dibsCount = null;
		
		// 찜 여부에 따른 insert 혹은 delete
		
		if (userDibs == null) { // 기존 사용자 찜이 없을 경우
			int result1 = restDao.insertDibs(sqlSession, dibsInfo);
			
			if (result1 > 0) { // 사용자 찜 수정 성공
				int result2 = restDao.plusDibsCount(sqlSession, dibsInfo.getRestNo());
				
				if(result2 > 0) { // 찜 개수 수정 성공
					sqlSession.commit();
					dibsCount = restDao.selectRest(sqlSession, Integer.parseInt(dibsInfo.getRestNo()));
				} else { // 찜 개수 수정 실패
					sqlSession.rollback();
					sqlSession.close();
				}
			} else { // 사용자 찜 수정 실패
				sqlSession.rollback();
				sqlSession.close();
			}
		} else { // 기존 사용자 찜이 있을 경우
			int result1 = restDao.deleteDibs(sqlSession, dibsInfo);
			
			if (result1 > 0) { // 사용자 찜 수정 성공
				int result2 = restDao.minusDibsCount(sqlSession, dibsInfo.getRestNo());
				
				if(result2 > 0) { // 찜 개수 수정 성공
					sqlSession.commit();
					dibsCount = restDao.selectRest(sqlSession, Integer.parseInt(dibsInfo.getRestNo()));
				} else { // 찜 개수 수정 실패
					sqlSession.rollback();
					sqlSession.close();
				}
			} else { // 사용자 찜 수정 실패
				sqlSession.rollback();
				sqlSession.close();
			}
		}
		
		HashMap map = new HashMap<>();
		map.put("userDibs", userDibs);
		map.put("dibsCount", dibsCount);
		return map;
	}
	
	// 가게 찜 - 가게 총 찜 개수 수정
//	@Override
//	public String updateDibsCount(String restNo, String check) {
//		SqlSession sqlSession = Template.getSqlSession();
//		int result = 0;
//		
//		if(check.equals("U")) {
//			result = restDao.plusDibsCount(sqlSession, restNo);
//		} else {
//			result = restDao.minusDibsCount(sqlSession, restNo);
//		}
//		System.out.println(result);
//		String likeNo = (restDao.selectRest(sqlSession, Integer.parseInt(restNo))).getLikeNo();
//		sqlSession.close();
//		return likeNo;
//	}
//	
//	// 가게 찜 선택 시 insert
//	@Override
//	public int insertDibs(Dibs dibsInfo) {
//		SqlSession sqlSession = Template.getSqlSession();
//		int result = restDao.insertDibs(sqlSession, dibsInfo);
//		
//		sqlSession.close();
//		return result;
//	}
//
//	// 가게 찜 선택 시 delete
//	@Override
//	public int deleteDibs(Dibs dibsInfo) {
//		SqlSession sqlSession = Template.getSqlSession();
//		int result = restDao.deleteDibs(sqlSession, dibsInfo);
//		
//		sqlSession.close();
//		return result;
//	}
	
	// 가게 리뷰 - 리뷰 리스트 개수 조회
	@Override
	public int selectReviewCount(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		int count = restDao.selectReviewCount(sqlSession, restNo);
		
		sqlSession.close();
		return count;
	}
	
	// 가게 리뷰 - 리뷰 리스트 조회
	public ArrayList<Review> selectReviewList(int restNo){
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Review> reviewList = restDao.selectReviewList(sqlSession, restNo);
		ArrayList<Review> newReviewList = new ArrayList<>();

		if (!reviewList.isEmpty()) {
			for(Review r : reviewList) {
				ArrayList<Attachment> reviewAtList = restDao.selectReviewAttachmentList(sqlSession, r.getReviewNo());
				r.setReviewAtList(reviewAtList);
				newReviewList.add(r);
			}
		}
		sqlSession.close();
		return newReviewList;
	}
	
	@Override
	public ArrayList<Review> selectReviewList(int restNo, PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Review> reviewList = restDao.selectReviewList(sqlSession, restNo);
		ArrayList<Review> newReviewList = new ArrayList<>();

		if (!reviewList.isEmpty()) {
			for(Review r : reviewList) {
				ArrayList<Attachment> reviewAtList = restDao.selectReviewAttachmentList(sqlSession, r.getReviewNo());
				r.setReviewAtList(reviewAtList);
				newReviewList.add(r);
			}
		}
		sqlSession.close();
		return newReviewList;
	}

	// 가게 리뷰 - 별점 별 리뷰 개수 조회
	@Override
	public ArrayList<Integer> selectRatingCount(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Integer> ratingCount = new ArrayList<>();
		
		HashMap<String, Integer> map = new HashMap<>();
		map.put("restNo", restNo);
		
		for (int i = 5; i >= 1; i--) {
			map.put("ratingCount", i);
			int count = restDao.selectRatingCount(sqlSession, map);
			ratingCount.add(count);
			map.remove("ratingCount");
		}
		sqlSession.close();
		return ratingCount;
	}
	
	// 가게 메뉴 리스트 조회
	@Override
	public ArrayList<Menu> selectMenuList(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Menu> menuList = restDao.selectMenuList(sqlSession, restNo);
		
		sqlSession.close();
		return menuList;
	}
	
	// 가게 이미지 리스트 조회
	@Override
	public ArrayList<Attachment> selectAttachmentList(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Attachment> list = new ArrayList<>();
		ArrayList<Review> reviewList = restDao.selectReviewList(sqlSession, restNo);
		
		list.addAll(restDao.selectRestAttachmentList(sqlSession, restNo));
		
		for(int i = 0; i < reviewList.size(); i++) {
			ArrayList<Attachment> atList = restDao.selectReviewAttachmentList(sqlSession, reviewList.get(i).getReviewNo());
			list.addAll(atList);
		}

		sqlSession.close();
		return list;
	}

	// 가게 리뷰 insert
	public int insertReview(Review r, ArrayList<Attachment> list) {
		SqlSession sqlSession = Template.getSqlSession();
		// 리뷰 insert
		int result1 = restDao.insertReview(sqlSession, r);
		
		// 리뷰 사진 insert
		int result2 = restDao.insertAttachmentList(sqlSession, list);

		// 가게 평점 update
		// 리뷰 평점 횟수
		int restNo = Integer.parseInt(r.getRestNo());
		
		ArrayList<Integer> ratingList = new RestServiceImpl().selectRatingCount(restNo);
		
		// 각 평점 곱하기 평점 별 횟수 나누기 전체 횟수
		// 각 평점 곱하기 평점 별 횟수
		double totalRating = 0;
		for (int i = 1; i <= ratingList.size(); i++) {
			totalRating += i * ratingList.get(i - 1);
		}
		
		// 전체 횟수
		int count = 0;
		for (int i = 1; i <= ratingList.size(); i++) {
			count += ratingList.get(i - 1);
		}
		
		// 소수점 첫째 자리까지 반올림
		String restGrade = String.valueOf(Math.round(totalRating / count));

		Restaurant rest = restDao.selectRest(sqlSession, restNo);
		rest.setRestGrade(restGrade);

		int result3 = restDao.updateRestGrade(sqlSession, rest);

		if(result1 * result2 * result3 == 1) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		return result1 * result2 * result3;
	}
	

//	@Override
//	public double operateRating(int restNo) {
//		// 리뷰 평점 횟수
//		ArrayList<Integer> list = new RestServiceImpl().selectRatingCount(restNo);
//		
//		// 각 평점 곱하기 평점 별 횟수 나누기 전체 횟수
//		
//		// 각 평점 곱하기 평점 별 횟수
//		double totalRating = 0;
//		for (int i = 1; i <= list.size(); i++) {
//			totalRating += i * list.get(i - 1);
//		}
//		
//		// 전체 횟수
//		int count = 0;
//		for (int i = 1; i <= list.size(); i++) {
//			count += list.get(i - 1);
//		}
//		
//		// 소수점 첫째 자리까지 반올림
//		return Math.round(totalRating / count);
//	}
	
	
	
	

}
