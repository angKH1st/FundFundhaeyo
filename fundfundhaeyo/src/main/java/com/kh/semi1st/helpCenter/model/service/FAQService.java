package com.kh.semi1st.helpCenter.model.service;

import static com.kh.semi1st.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi1st.helpCenter.model.dao.FAQDao;
import com.kh.semi1st.helpCenter.model.vo.FAQ;

public class FAQService {

	public ArrayList<FAQ> selectFAQList(){
		Connection conn = getConnection();
		
		ArrayList<FAQ> list = new FAQDao().selectFAQList(conn);
		
		close(conn);
		return list;
	}
}
