package com.kh.semi1st.company.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.semi1st.common.JDBCTemplate.*;

import com.kh.semi1st.company.model.dao.AnnouncementDao;
import com.kh.semi1st.company.model.vo.Announcement;

public class AnnouncementService {

	public ArrayList<Announcement> selectAnnouncementList() {
		Connection conn = getConnection();
		
		ArrayList<Announcement> list = new AnnouncementDao().selectAnnouncementList(conn);
		
		close(conn);
		
		return list;
	}
	
	

}
