package com.kh.semi1st.helpCenter.model.service;

import static com.kh.semi1st.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi1st.common.model.vo.PageInfo;
import com.kh.semi1st.helpCenter.model.vo.QNA;
import com.kh.semi1st.helpCenter.model.vo.Reply;
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
		int result3 = new QNADao().insertQNANotice(conn, q);
		
		if(at != null) {
			result2 = new QNADao().insertAttachment(conn, at);
		}
		
		if(result1 > 0 && result2 > 0 && result3 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
				
		return result1 * result2 * result3;
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
		
		int result1 = 1;
		
		Reply r = new QNADao().selectQNAReply(conn, qNo);
		if(r != null) {
			result1 = new QNADao().deleteReply(conn, qNo);
		}
		
		int result2 = new QNADao().deleteQNA(conn, qNo);
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result1 * result2;
	}

	/** QNA 수정해주는 메소드
	 *  @param q : 수정하고자 하는 QNA
	 *  @param at : 수정하고자 하는 첨부파일
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int updateQNA(QNA q, Attachment at) {
		Connection conn = getConnection();
		
		int result1 = new QNADao().updateQNA(conn, q);
		
		int result2 = 1;
		if(at != null) {
			if(at.getAttachmentNo() != 0) {
				result2 = new QNADao().updateAttachment(conn, at);
			}else {
				result2 = new QNADao().insertNewAttachment(conn, at);
			}
		}

		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
				
		return result1 * result2;
	}

	/** QNA 게시글 내 답변이 있는지 조회해주는 메소드
	 *  @param qNo : 조회하고자 하는 QNA
	 *  @return r : 조회된 답변
	 */
	public Reply selectQNAReply(int qNo) {
		Connection conn = getConnection();
		
		Reply r = new QNADao().selectQNAReply(conn, qNo);
		
		close(conn);
		
		return r;
	}

	/** QNA 관리자 강제 삭제해주는 메소드
	 *  @param qNo : 삭제하고자 하는 QNA no
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int deleteForcedQNA(int qNo) {
		Connection conn = getConnection();
		QNA q = new QNADao().selectQNA(conn, qNo);
		
		int result1 = new QNADao().deleteQNA(conn, qNo);
		int result2 = new QNADao().deleteQNANotice(conn, q);
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result1 * result2;
	}

	/** QNA 게시글 내 답변 삭제해주는 메소드
	 *  @param qNo : 답변 삭제하고자 하는 QNA no
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패)
	 */
	public int deleteReply(int qNo) {
		Connection conn = getConnection();
		QNA q = new QNADao().selectQNA(conn, qNo);
		
		int result1 = new QNADao().deleteReply(conn, qNo);
		int result2 = new QNADao().deleteReplyNotice(conn, q);
		int result3 = new QNADao().updateQNAStatusR(conn, q, "N");
		
		if(result1 > 0 && result2 > 0 && result3 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result1 * result2 * result3;
	}

	/** QNA 게시글 내 답변 업데이트해주는 메소드
	 *  @param qNo : 답변 업데이트하고자 하는 QNA no
	 *  @param answer : 업데이트하고자 하는 답변
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패)
	 */
	public int updateReply(int qNo, String answer) {
		Connection conn = getConnection();
		
		int result = new QNADao().updateReply(conn, qNo, answer);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	/** QNA 게시글 내 답변 삽입해주는 메소드
	 *  @param qNo : 답변 삽입하고자 하는 QNA no
	 *  @param answer : 삽입하고자 하는 답변
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패)
	 */
	public int insertReply(int qNo, String answer) {
		Connection conn = getConnection();
		QNA q = new QNADao().selectQNA(conn, qNo);
		
		int result1 = new QNADao().insertReply(conn, qNo, answer);
		int result2 = new QNADao().insertReplyNotice(conn, q, answer);
		int result3 = new QNADao().updateQNAStatusR(conn, q, "Y");
		
		if(result1 > 0 && result2 > 0 && result3 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result1 * result2 * result3;
	}

}
