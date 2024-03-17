package com.kh.semi1st.notice.model.service;

import static com.kh.semi1st.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi1st.notice.model.dao.NoticeDao;
import com.kh.semi1st.notice.model.vo.Notice;

public class NoticeService {

	/** 알림 조회 메소드
	 *  @param userNo : 조회하고자 하는 알림 수신 회원
	 *  @param type : 조회하고자 하는 알림 타입
	 *  @return list : 조회된 알림 목록
	 */
	public ArrayList<Notice> selectMemberNoticeList(int userNo, int type) {
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new ArrayList<Notice>();
		
		switch(type) {
		case 0 : list = new NoticeDao().selectMemberNoticeAllList(conn, userNo); break;
		case 1 : list = new NoticeDao().selectMemberNoticeAnnouncementList(conn, type); break;
		case 2 : list = new NoticeDao().selectMemberNoticeProjectList(conn, userNo, type); break;
		case 3 : list = new NoticeDao().selectMemberNoticeQNAList(conn, userNo, type); break;
		}
		
		close(conn);
		
		return list;
	}
}
