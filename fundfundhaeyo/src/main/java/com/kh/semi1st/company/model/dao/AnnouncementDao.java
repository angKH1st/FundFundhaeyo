package com.kh.semi1st.company.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.semi1st.common.JDBCTemplate.*;

import com.kh.semi1st.common.model.vo.PageInfo;
import com.kh.semi1st.company.model.vo.Announcement;

public class AnnouncementDao {

	private Properties prop = new Properties();
	
	public AnnouncementDao() {
		try {
			prop.loadFromXML(new FileInputStream(AnnouncementDao.class.getResource("/db/sql/tb-announcement-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Announcement> selectAnnouncementList(Connection conn) {
		ArrayList<Announcement> list = new ArrayList<Announcement>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectAnnouncementList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Announcement(rset.getInt("announcement_no"),
									      rset.getString("announcement_title"),
									      rset.getString("user_nickname"),
									      rset.getInt("announcement_count"),
									      rset.getDate("announcement_create_date")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	/** 공지사항 제한 조회
	 *  @param  conn
	 *  @param  pi : 페이징 처리 객체
	 *  @return list : 공지사항 제한 list
	 */
	public ArrayList<Announcement> selectAnnouncementLimitList(Connection conn, PageInfo pi) {
		ArrayList<Announcement> list = new ArrayList<Announcement>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectAnnouncementLimitList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Announcement(rset.getInt("announcement_no"),
									      rset.getString("announcement_title"),
									      rset.getString("user_nickname"),
									      rset.getInt("announcement_count"),
									      rset.getDate("announcement_create_date")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	/** 공지사항 전체 게시글 수 조회
	 *  @param conn
	 *  @return listCount : 전체 개시글 수
	 */
	public int selectAnnouncementListCount(Connection conn) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAnnouncementListCount");
		
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

}
