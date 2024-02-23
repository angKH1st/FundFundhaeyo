package com.kh.semi1st.company.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.semi1st.common.JDBCTemplate.*;

import com.kh.semi1st.common.model.vo.PageInfo;
import com.kh.semi1st.company.model.dao.AnnouncementDao;
import com.kh.semi1st.company.model.vo.Announcement;

public class AnnouncementService {

	/** 공지사항 전체 조회
	 *  @return list : 공지사항 전체 list
	 */
	public ArrayList<Announcement> selectAnnouncementList() {
		Connection conn = getConnection();
		
		ArrayList<Announcement> list = new AnnouncementDao().selectAnnouncementList(conn);
		
		close(conn);
		
		return list;
	}
	
	/** 공지사항 제한 조회
	 *  @param pi : 페이징 처리 객체
	 *  @return list : 공지사항 제한 list
	 */
	public ArrayList<Announcement> selectAnnouncementLimitList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Announcement> list = new AnnouncementDao().selectAnnouncementLimitList(conn, pi);
		
		close(conn);
		
		return list;
	}

	/** 공지사항 전체 게시글 수 조회
	 *  @return listCount : 전체 개시글 수
	 */
	public int selectAnnouncementListCount() {
		Connection conn = getConnection();
		
		int listCount = new AnnouncementDao().selectAnnouncementListCount(conn);
		
		close(conn);
		
		return listCount;
	}

	
	
	

}
