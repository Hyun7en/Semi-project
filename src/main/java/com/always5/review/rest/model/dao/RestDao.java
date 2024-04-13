package com.always5.review.rest.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.always5.review.rest.model.vo.Restaurant;

public class RestDao {
	public Restaurant selectRest(SqlSession sqlSession, int restNo) {
		return sqlSession.selectOne("restMapper", restNo);
		
		SELECT REST_NAME,
			   REST_ADDRESS,
			   REST_PHONE,
			   REST_INTRO,
			   REST_GRADE,
			   REST_LIKE_NO,
			   REST_ENROLL_DATE,
			   REST_MODIFY_DATE,
			   REST_OPER_TIME,
			   FOOD_CATEGORY_NO
		FROM REST_INFO
		JOIN FOOD_CATEGORY USING (FOOD_CATEGORY_NO)
		WHERE REST_NO = #{restNo}
	}

}
