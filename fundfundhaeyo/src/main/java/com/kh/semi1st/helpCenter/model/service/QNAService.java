package com.kh.semi1st.helpCenter.model.service;

import static com.kh.semi1st.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi1st.common.model.vo.PageInfo;
import com.kh.semi1st.helpCenter.model.vo.QNA;
import com.kh.semi1st.helpCenter.model.dao.QNADao;

public class QNAService {

	/** 공지사항 전체 게시글 수 조회
	 *  @return listCount : 전체 개시글 수
	 */
	public int selectQNAListCount() {
		Connection conn = getConnection();
		
		int listCount = new QNADao().selectQNAListCount(conn);
		
		close(conn);
		
		return listCount;
	}

	/** QNA 제한 조회
	 *  @param pi : 페이징 처리 객체
	 *  @return list : QNA 제한 list
	 */
	public ArrayList<QNA> selectQNALimitList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<QNA> list = new QNADao().selectQNALimitList(conn, pi);
		
		close(conn);
		
		return list;
	}

}
