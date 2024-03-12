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
				q.setQnaCount(rset.getInt("qna_count"));
				q.setQnaCreateDate(rset.getDate("qna_create_date"));
				q.setQnaModifyDate(rset.getDate("qna_modify_date"));
				q.setQnaAnswerStatus(rset.getString("qna_answer_status"));
				
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
}
