package com.kh.semi1st.helpCenter.model.service;

import static com.kh.semi1st.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi1st.common.model.vo.PageInfo;
import com.kh.semi1st.helpCenter.model.dao.AnnouncementDao;
import com.kh.semi1st.helpCenter.model.vo.Announcement;

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

	/** 공지사항 조회시 조회수 증가
	 *  @param announcementNo
	 *  @return
	 */
	public int increaseCount(int announcementNo) {
		Connection conn = getConnection();
		
		int result = new AnnouncementDao().increaseCount(conn, announcementNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	/** 공지사항 상세조회해주는 메소드
	 *  @param aNo : 조회하고자 하는 공지사항의 번호
	 *  @return list : 조회된 공지사항
	 */
	public Announcement selectAnnouncement(int announcementNo) {
		Connection conn = getConnection();
		
		Announcement a = new AnnouncementDao().selectAnnouncement(conn, announcementNo);
		
		close(conn);
		
		return a;
	}

	/** 공지사항 상세조회 이전버튼
	 *  @param announcementNo
	 *  @return
	 */
	public Announcement selectAnnouncementBefore(int announcementNo) {
		Connection conn = getConnection();
		
		Announcement before = new AnnouncementDao().selectAnnouncementBefore(conn, announcementNo);
		
		close(conn);
		
		return before;
	}
	
	/** 공지사항 상세조회 다음버튼
	 *  @param announcementNo
	 *  @return
	 */
	public Announcement selectAnnouncementAfter(int announcementNo) {
		Connection conn = getConnection();
		
		Announcement after = new AnnouncementDao().selectAnnouncementAfter(conn, announcementNo);
		
		close(conn);
		
		return after;
	}

	/** 공지사항을 작성 처리해주는 메소드
	 *  @param title : 공지사항 제목
	 *  @param content : 공지사항 내용
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int insertAnnouncement(String title, String content) {
		Connection conn = getConnection();
		
		int result1 = new AnnouncementDao().insertAnnouncement(conn, title, content);
		int result2 = new AnnouncementDao().insertAnnouncementNotice(conn, content);
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
	}

	/** 공지사항을 수정 처리해주는 메소드
	 *  @param aNo : 수정하고자 하는 공지사항 번호
	 *  @param title : 수정하고자 하는 공지사항 제목
	 *  @param content : 수정하고자 하는 공지사항 내용
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패)
	 */
	public int updateAnnouncement(int aNo, String title, String content) {
		Connection conn = getConnection();
		
		int result1 = new AnnouncementDao().updateAnnouncement(conn, aNo, title, content);
		int result2 = new AnnouncementDao().updateAnnouncementNotice(conn, aNo, content);
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
	}
	
	/** 공지사항을 삭제 처리해주는 메소드
	 *  @param aNo : 삭제하고자 하는 공지사항 번호
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패)
	 */
	public int deleteAnnouncement(int aNo) {
		Connection conn = getConnection();
		
		int result = new AnnouncementDao().deleteAnnouncement(conn, aNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
}
