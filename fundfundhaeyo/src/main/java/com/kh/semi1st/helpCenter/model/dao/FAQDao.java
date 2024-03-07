package com.kh.semi1st.helpCenter.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.semi1st.helpCenter.model.vo.FAQ;

import static com.kh.semi1st.common.JDBCTemplate.*;

public class FAQDao {

	Properties prop = new Properties();
	
	public FAQDao() {
		try {
			prop.loadFromXML(new FileInputStream(FAQDao.class.getResource("/db/sql/tb-FAQ-mapper.xml").getPath()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<FAQ> selectFAQList(Connection conn){
		ArrayList<FAQ> list = new ArrayList<FAQ>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectFAQList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new FAQ(rset.getInt("faq_no"),
						         rset.getString("faq_title"),
						         rset.getString("faq_content"),
						         rset.getDate("faq_modify_date")
						         ));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
}







