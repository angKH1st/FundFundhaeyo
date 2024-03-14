package com.kh.semi1st.helpCenter.model.service;

import static com.kh.semi1st.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi1st.common.model.vo.PageInfo;
import com.kh.semi1st.helpCenter.model.vo.QNA;
import com.kh.semi1st.helpCenter.model.vo.Attachment;
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

	/** QNA 등록을 처리해주는 메소드
	 *  @param q : 등록하고자 하는 QNA
	 *  @param at : 등록하고자 하는 첨부파일
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int insertQNA(QNA q, Attachment at) {
		Connection conn = getConnection();
		
		int result1 = new QNADao().insertQNA(conn, q);
		int result2 = 1;
		
		if(at != null) {
			result2 = new QNADao().insertAttachment(conn, at);
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
				
		return result1 * result2;
	}

	/** QNA 상세조회를 처리해주는 메소드
	 *  @param qNo : 조회하고자 하는 QNA no
	 *  @return q : 조회된 QNA
	 */
	public QNA selectQNA(int qNo) {
		Connection conn = getConnection();
		
		QNA q = new QNADao().selectQNA(conn, qNo);
		
		close(conn);
		
		return q;
	}

	/** QNA 첨부파일을 조회해주는 메소드
	 *  @param qNo : 조회하고자 하는 QNA no
	 *  @return at : 조회된 첨부파일
	 */
	public Attachment selectAttachment(int qNo) {
		Connection conn = getConnection();
		
		Attachment at = new QNADao().selectAttachment(conn, qNo);
		
		close(conn);
		
		return at;
	}

	/** QNA 삭제해주는 메소드
	 *  @param qNo : 삭제하고자 하는 QNA no
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int deleteQNA(int qNo) {
		Connection conn = getConnection();
		
		int result = new QNADao().deleteQNA(conn, qNo);
		
		close(conn);
		
		return result;
	}


}
