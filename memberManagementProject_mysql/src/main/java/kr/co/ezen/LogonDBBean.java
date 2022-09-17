package kr.co.ezen;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LogonDBBean {
	
	private static LogonDBBean instance = new LogonDBBean();
	public static LogonDBBean getInstance () {
	return instance;
	}
	private LogonDBBean() {}
	
	private Connection getConnection() throws Exception{
	Connection conn=null;
	String jdbcUrl="jdbc:mysql://localhost:3306/hyundb";
	String dbId="hyun";
	String dbPass ="1234";
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn=DriverManager.getConnection(jdbcUrl,dbId,dbPass);
	return conn;
	}
	
	public void insertMember(memberVO membervo) throws Exception {
			Connection conn = null;
			PreparedStatement pstmt = null;
			try {
			conn = getConnection();
			pstmt = conn.prepareStatement("insert into member values(?,?,?,?)");
			pstmt.setString(1, membervo.getId());
			pstmt.setString(2, membervo.getPasswd());
			pstmt.setString(3, membervo.getName());
			pstmt.setTimestamp(4, membervo.getReg_date());
			pstmt.executeUpdate();
			} catch(Exception ex) {
			ex.printStackTrace();
			} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
			}
	}
	
	public int userCheck(String id, String passwd)
			throws Exception {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs= null;
			String dbpasswd="";
			int x=-1;
			try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select passwd from member where id = ?");
			pstmt.setString(1, id);
			rs= pstmt.executeQuery();
			
			if(rs.next()){
				dbpasswd= rs.getString("passwd");
				if(dbpasswd.equals(passwd))
				x= 1; //인증 성공
				else
				x= 0; //비밀번호 틀림
				}else
				x=-1;// 해당 아이디 없음
				} catch(Exception ex) {
				ex.printStackTrace();
				} finally {
				if (rs != null) try { rs.close(); } catch(SQLException ex) {}
				if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
				if (conn != null) try { conn.close(); } catch(SQLException ex) {}
				}
				return x;
				}
	
}

