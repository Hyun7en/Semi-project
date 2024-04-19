package com.always5.search.dao;

import java.sql.Connection;
import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.always5.common.vo.PageInfo;
import com.always5.review.rest.model.vo.Restaurant;

public class SearchDao {

	public ArrayList<Restaurant> selectSearchRest(SqlSession sqlSession, PageInfo re){
		// 마이바티스에서는 페이징 처리를 위해서 rowBounds라는 클래스를 제공한다.
		/* offset: 몇 개의 게시글을 건너뛰고 조회할 것인지에 대한 값
		 * 
		 * currnetPage : 1		1~5		0
		 * currnetPage : 2		6~10	5
		 * currnetPage : 3		11~15	10
		 * 
		 */
		
		int offset = (re.getCurrentPage() - 1) * re.getBoardLimit();
		int limit = re.getBoardLimit();
//		System.out.println(pi);
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("searchMapper.selectSearchRest", null, rowBounds);
	}
	
	public int searchListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("searchMapper.searchListCount");
		
	}
	
	public ArrayList<Restaurant> searchList(SqlSession sqlSession){
		return (ArrayList)sqlSession.selectList("searchMapper.selectSearchRest");
	}
	
	
	
	
	/*
	 * <!-- namespace: 해당 mapper 파일의 고유한 별칭 -->
<mapper namespace="boardMapper">


<!-- SELECT문은 resultset으로 받아주는데 그걸 대신해 주는 것
	 결과물이 ResultSet에 있는 것을 꺼내서 resultMap에 들고오는 것
	 그래서 User_Id를 사용 -->
 	<resultMap id="restResultSet" type="Restaurant">
 		<!-- config의 alias로 주소 설정 해줘야 type에 축약해서 Board로 쓰기 가능 -->
 		<!-- <result column="테이블 컬럼명" property="객체의 필드명"> -->
 		<result column="BOARD_NO" property="boardNo"/>
 		<result column="BOARD_TITLE" property="boardTitle"/>
 		<result column="BOARD_CONTENT" property="boardContent"/>
 		<result column="USER_ID" property="boardWriter"/>
 		<result column="COUNT" property="count"/>
 		<result column="CREATE_DATE" property="createDate"/>
 		<result column="STATUS" property="status"/>
 	</resultMap>
 	
 	<!-- resultType에 원시타입 쓰고 싶으면 mybatis 홈페이지에서 확인해서 써야함
 		내부는 일단 ResultSet으로 떨어짐, ResultSet으로 떨어진 한 줄을 int로 받아줄 것 -->
 	<select id="selectListCount" resultType="_int">
 		SELECT COUNT(*)
 		  FROM BOARD
 		 WHERE STATUS = 'Y' 
 	
 	</select>
 	
 	<select id="searchRestListCount" resultMap="restResultSet">
 		SELECT BOARD_NO,
 				BOARD_TITLE,
 				USER_ID,
 				COUNT,
 				CREATE_DATE
 		FROM BOARD B
 		JOIN MEMBER ON (BOARD_WRITER = USER_NO)
 		WHERE B.STATUS = 'Y'
 		ORDER BY BOARD_NO DESC
 	</select>
 	
 	
</mapper>
	 * 
	 * 
	 * */
}