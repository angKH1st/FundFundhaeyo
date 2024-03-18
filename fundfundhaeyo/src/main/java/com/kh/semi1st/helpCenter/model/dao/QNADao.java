package com.kh.semi1st.helpCenter.model.dao;

import static com.kh.semi1st.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.semi1st.common.model.vo.PageInfo;
import com.kh.semi1st.helpCenter.model.vo.QNA;
import com.kh.semi1st.helpCenter.model.vo.Reply;
import com.kh.semi1st.helpCenter.model.vo.Attachment;

public class QNADao {
	
private Properties prop = new Properties();
	
	public QNADao() {
		try {
			prop.loadFromXML(new FileInputStream(AnnouncementDao.class.getResource("/db/sql/tb-QNA-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/** 공지사항 전체 게시글 수 조회
	 *  @param conn
	 *  @return listCount : 전체 개시글 수
	 */
	public int selectQNAListCount(Connection conn) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectQNAListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("COUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}

	/** QNA 제한 조회
	 *  @param conn
	 *  @param pi : 페이징 처리 객체
	 *  @return list : QNA 제한 list
	 */
	public ArrayList<QNA> selectQNALimitList(Connection conn, PageInfo pi) {
		ArrayList<QNA> list = new ArrayList<QNA>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectQNALimitList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				QNA q = new QNA();
				q.setQnaNo(rset.getInt("qna_no"));
				q.setQnaWriter(rset.getString("user_nickname"));
				q.setQnaTitle(rset.getString("qna_title"));
				q.setQnaContent(rset.getString("qna_content"));
				q.setQnaCreateDate(rset.getDate("qna_create_date"));
				q.setQnaModifyDate(rset.getDate("qna_modify_date"));
				q.setQnaAnswerStatus(rset.getString("qna_answer_status"));
				q.setQnaStatus(rset.getString("qna_status"));
				
				list.add(q);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	/** QNA 등록을 처리해주는 메소드
	 *  @param conn
	 *  @param q : 등록하고자 하는 QNA
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int insertQNA(Connection conn, QNA q) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertQNA");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, Integer.parseInt(q.getQnaWriter()));
			pstmt.setString(2, q.getQnaTitle());
			pstmt.setString(3, q.getQnaContent());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** QNA 첨부파일 등록을 처리해주는 메소드
	 *  @param conn
	 *  @param at : 등록하고자 하는 첨부파일
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int insertAttachment(Connection conn, Attachment at) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, at.getAttachmentOriginName());
			pstmt.setString(2, at.getAttachmentUpdateName());
			pstmt.setString(3, at.getAttachmentPath());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** QNA 상세조회를 처리해주는 메소드
	 *  @param conn
	 *  @param qNo : 조회하고자 하는 QNA no
	 *  @return q : 조회된 QNA
	 */
	public QNA selectQNA(Connection conn, int qNo) {
		QNA q = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectQNA");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, qNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				q = new QNA();
				q.setQnaNo(rset.getInt("qna_no"));
				q.setQnaWriter(rset.getString("user_nickname"));
				q.setQnaWriterNo(rset.getInt("qna_writer"));
				q.setQnaTitle(rset.getString("qna_title"));
				q.setQnaContent(rset.getString("qna_content"));
				q.setQnaCreateDate(rset.getDate("qna_create_date"));
				q.setQnaModifyDate(rset.getDate("qna_modify_date"));
				q.setQnaAnswerStatus(rset.getString("qna_answer_status"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return q;
	}

	/** QNA 첨부파일을 조회해주는 메소드
	 *  @param conn
	 *  @param qNo : 조회하고자 하는 QNA no
	 *  @return at : 조회된 첨부파일
	 */
	public Attachment selectAttachment(Connection conn, int qNo) {
		Attachment at = null;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, qNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				at = new Attachment();
				at.setAttachmentNo(rset.getInt("attachment_no"));
				at.setAttachmentOriginName(rset.getString("attachment_origin_name"));
				at.setAttachmentUpdateName(rset.getString("attachment_update_name"));
				at.setAttachmentPath(rset.getString("attachment_path"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return at;
	}

	/** QNA 삭제해주는 메소드
	 *  @param conn
	 *  @param qNo : 삭제하고자 하는 QNA no
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int deleteQNA(Connection conn, int qNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteQNA");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, qNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** QNA 수정해주는 메소드
	 *  @param conn
	 *  @param q : 수정하고자 하는 QNA
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int updateQNA(Connection conn, QNA q) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateQNA");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, q.getQnaTitle());
			pstmt.setString(2, q.getQnaContent());
			pstmt.setInt(3, q.getQnaNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** QNA 첨부파일 업데이트해주는 메소드
	 *  @param conn
	 *  @param at : 업데이트하고자 하는 첨부파일
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int updateAttachment(Connection conn, Attachment at) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, at.getAttachmentOriginName());
			pstmt.setString(2, at.getAttachmentUpdateName());
			pstmt.setString(3, at.getAttachmentPath());
			pstmt.setInt(4, at.getAttachmentNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** QNA 첨부파일 등록해주는 메소드
	 *  @param conn
	 *  @param at : 업데이트하고자 하는 첨부파일
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int insertNewAttachment(Connection conn, Attachment at) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertNewAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, at.getAttachmentQnaNo());
			pstmt.setString(2, at.getAttachmentOriginName());
			pstmt.setString(3, at.getAttachmentUpdateName());
			pstmt.setString(4, at.getAttachmentPath());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** QNA 작성 후 알림 삽입해주는 메소드
	 *  @param conn
	 *  @param q : 작성한 QNA
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int insertQNANotice(Connection conn, QNA q) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertQNANotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, Integer.parseInt(q.getQnaWriter()));
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** QNA 게시글 내 답변이 있는지 조회해주는 메소드
	 *  @param conn
	 *  @param qNo : 조회하고자 하는 QNA
	 *  @return : 조회된 답변
	 */
	public Reply selectQNAReply(Connection conn, int qNo) {
		Reply r = null;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectQNAReply");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, qNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				r = new Reply();
				r.setReplyNo(rset.getInt("reply_no"));
				r.setReplyContent(rset.getString("reply_content"));
				r.setReplyRefNo(rset.getInt("reply_ref_no"));
				r.setReplyWriter(rset.getString("user_nickname"));
				r.setReplyCreateDate(rset.getDate("reply_create_date"));
				r.setReplyModifyDate(rset.getDate("reply_modify_date"));
				r.setReplyStatus(rset.getString("reply_status"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return r;
	}
	
	/** QNA 삭제 후 알림 삽입해주는 메소드
	 *  @param conn
	 *  @param q : 삭제한 QNA
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int deleteQNANotice(Connection conn, QNA q) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteQNANotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, q.getQnaWriterNo());
			pstmt.setInt(2, q.getQnaNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** QNA 게시글 내 답변 삭제해주는 메소드
	 *  @param conn
	 *  @param qNo : 답변 삭제하고자 하는 QNA no
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패)
	 */
	public int deleteReply(Connection conn, int qNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteReply");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, qNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	/** QNA 답변 삭제 후 알림 삽입해주는 메소드
	 *  @param conn
	 *  @param q : 삭제한 QNA
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int deleteReplyNotice(Connection conn, QNA q) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteReplyNotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, q.getQnaWriterNo());
			pstmt.setInt(2, q.getQnaNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** QNA 게시글 내 답변 업데이트해주는 메소드
	 *  @param conn
	 *  @param qNo : 답변 업데이트하고자 하는 QNA no
	 *  @param answer : 업데이트하고자 하는 답변
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패)
	 */
	public int updateReply(Connection conn, int qNo, String answer) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateReply");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, answer);
			pstmt.setInt(2, qNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** QNA 게시글 내 답변 삽입해주는 메소드
	 *  @param conn
	 *  @param qNo : 답변 삽입하고자 하는 QNA no
	 *  @param answer : 업데이트하고자 하는 답변
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패)
	 */
	public int insertReply(Connection conn, int qNo, String answer) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReply");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, answer);
			pstmt.setInt(2, qNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** QNA 답변 등록 후 알림 삽입해주는 메소드
	 *  @param conn
	 *  @param q : 알림 대상 QNA 게시물
	 *  @param answer : 삽입하고자 하는 답변
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패)
	 */
	public int insertReplyNotice(Connection conn, QNA q, String answer) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReplyNotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, q.getQnaWriterNo());
			pstmt.setInt(2, q.getQnaNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** QNA 게시글 내 답변 삽입 후, 답변 상태 변경해주는 메소드
	 *  @param conn
	 *  @param q : 변경 대상 게시물
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패)
	 */
	public int updateQNAStatusR(Connection conn, QNA q, String statusR) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateQNAStatusR");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, statusR);
			pstmt.setInt(2, q.getQnaNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
}
