package kr.co.ezen;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class boardDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs  = null;
	ResultSet rs2  = null;
	ResultSet rs3  = null;
	
	public Connection getConnection() {
		String Driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "hyun";
		String pass = "1234";
		
		try {
			Class.forName(Driver);
			 conn = DriverManager.getConnection(url, id, pass);
			System.out.println("데이터베이스 연동에 성공하였습니다.");
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연동에 실패하였습니다.");
		}		
		return conn;		
	}
	
	//데이터를 저장하는 메소드 호출
	public void insertBoard(boardBean bBean){
		
		conn = getConnection();
		
		try {
			int ref = 0;//글 그룹에서 가장 큰 값을 적습니다.
			int re_step = 1;
			int re_level = 1;
			
			String refsql = "select max(ref) from smartboard";
			pstmt = conn.prepareStatement(refsql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				ref = rs.getInt(1) + 1;//최대값에 +1을 더하여 글 그룹을 설정합니다.
			}
			
			String sql = "insert into smartboard values"
					+ "(smartboard_num.nextval, ?, ?, ?, ?, sysdate, ?, ?, ?, 0, ?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bBean.getWriter()); 
			pstmt.setString(2, bBean.getEmail()); 
			pstmt.setString(3, bBean.getSubject()); 
			pstmt.setString(4, bBean.getPassword()); 
			pstmt.setInt(5, ref); 
			pstmt.setInt(6, re_step); 
			pstmt.setInt(7, re_level); 
			pstmt.setString(8, bBean.getContent()); 
			
			pstmt.executeUpdate();
			
			if(conn != null) {
				conn.commit();
				conn.close();
			}			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
		//
		public Vector<boardBean> allselectBoard(){
			
			conn = getConnection();
			
			Vector<boardBean> vec = new Vector<>();
			
			try {
				String sql = "select * from smartboard order by num desc, ref desc, re_step asc";
				
				pstmt = conn.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					boardBean bean = new boardBean();
					
					bean.setNum(rs.getInt(1));
					bean.setWriter(rs.getString(2));
					bean.setEmail(rs.getString(3));
					bean.setSubject(rs.getString(4));
					bean.setPassword(rs.getString(5));
					bean.setReg_date(rs.getDate(6).toString());
					bean.setRef(rs.getInt(7));
					bean.setRe_step(rs.getInt(8));
					bean.setRe_level(rs.getInt(9));
					bean.setReadCount(rs.getInt(10));
					bean.setContent(rs.getString(11)); 
					
					vec.add(bean);			
				}
				if(conn != null) {
					conn.commit();
					conn.close();
				}				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return vec;
		}
		
		//
		public boardBean oneselectboard(int num){
			
			boardBean bean = new boardBean();
			conn = getConnection();
			
			try {
				//count
				String sql = "update smartboard set readcount= readcount + 1 where num = ? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,num);
				pstmt.executeUpdate();
				
				String sql2 = "select * from smartboard where num = ?";
				pstmt = conn.prepareStatement(sql2);
				pstmt.setInt(1, num);
				rs=pstmt.executeQuery();
				
				if(rs.next()) {
					
					bean.setNum(rs.getInt(1));
					bean.setWriter(rs.getString(2));
					bean.setEmail(rs.getString(3));
					bean.setSubject(rs.getString(4));
					bean.setPassword(rs.getString(5));
					bean.setReg_date(rs.getDate(6).toString());
					bean.setRef(rs.getInt(7));
					bean.setRe_step(rs.getInt(8));
					bean.setRe_level(rs.getInt(9));
					bean.setReadCount(rs.getInt(10));
					bean.setContent(rs.getString(11)); 
					
				}
				if(conn != null) {
					conn.commit();
					conn.close();
				}				
			} catch(Exception e) {
				e.printStackTrace();
			}
			return bean;
		}
		
		//댓글을 저장하는 메소드
	public void rewriteBoard(boardBean bBean) {
		conn = getConnection();
		
		int ref = bBean.getRef();
		int re_step = bBean.getRe_step();
			
		try {
			
			String sql = "select max(re_level) from smartboard where ref = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ref);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
			bBean.setRe_level(rs.getInt(1)+1);
			
			String sql2 = "insert into smartboard values(smartboard_num.nextval,?,?,?,?,sysdate,?,?,?,0,?)";
			pstmt = conn.prepareStatement(sql2);
			pstmt.setString(1,bBean.getWriter());//boardBean -> setWriter(), getWriter() 메모리 상의 데이터를 호출
			pstmt.setString(2,bBean.getEmail());
			pstmt.setString(3,bBean.getSubject());
			pstmt.setString(4,bBean.getPassword());
			pstmt.setInt(5,ref);
			pstmt.setInt(6,re_step+1);
			pstmt.setInt(7,bBean.getRe_level());
			pstmt.setString(8,bBean.getContent());
			rs2 = pstmt.executeQuery();
			if(rs2.next()) {
				System.out.println("성공");
			} else {
				System.out.println("실패");
			}
	        } else {
					System.out.println("최댓값이 없습니다.");
			}	
			if(conn != null) {
				conn.commit();
				conn.close();
			}
			
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	
	//수정용 반환 게시글 메소드 호출
	public boardBean updateOneSelectBoard(int num) {
		
		boardBean bean = new boardBean();
		conn = getConnection();
		
		try {
			
			String sql2 = "select * from smartboard where num = ?";
			pstmt = conn.prepareStatement(sql2);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				
				bean.setNum(rs.getInt(1));
				bean.setWriter(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setPassword(rs.getString(5));
				bean.setReg_date(rs.getDate(6).toString());
				bean.setRef(rs.getInt(7));
				bean.setRe_step(rs.getInt(8));
				bean.setRe_level(rs.getInt(9));
				bean.setReadCount(rs.getInt(10));
				bean.setContent(rs.getString(11)); 
				
			}
			if(conn != null) {
				conn.commit();
				conn.close();
			}				
		} catch(Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
	
	//게시글 수정을 위한 비밀번호 확인 (데이터 베이스에 존재하는 비밀번호) 메소드 호출
	public String getPass(int num) {
		
		conn = getConnection();
		String pass="";
		
		try {
			String sql = "select password from smartboard where num=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				pass = rs.getString(1);
			}
			
			} catch(Exception e) {
				e.printStackTrace();
			}
		    return pass;
   }
	
	public void updateBoard(boardBean bBean) {
		
		conn = getConnection();
		
		try {
			String sql = "update smartboard set content =? where num=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bBean.getContent());
			pstmt.setInt(2, bBean.getNum());
			
			pstmt.executeUpdate();
			
			if(conn != null) {
				conn.commit();
				conn.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	//삭제 메소드 호출
	public void deleteBoard(int num) {
		
		conn= getConnection();
		String sql = "delete from smartboard where num = ?";
		try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, num);
		pstmt.executeUpdate();
		
		if(conn != null) {
			conn.commit();
			conn.close();
		}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//전체 게시글 수 파악하여 반환하는 메소드 호출
	public int getAllcount(){
	
		conn = getConnection();
		
		int count = 0;
		
		try {
			String sql = "select count(*) from smartboard";
			
			pstmt = conn.prepareStatement(sql);
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1);
			}
			if(conn != null) {
				conn.commit();
				conn.close();
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	
		return count;
	}
	
	//모든 게시글을 반환해주는 메소드 호출
	public Vector<boardBean> allselectBoard(int startRow,int endRow){
		
		conn = getConnection();
		Vector<boardBean> vb = new Vector<boardBean>();
		
		try {
			/* Rownum: query 결과로 나오게 되는 각각의 행들의 순서값인데,
			 * 주로 특정 갯수의 이하 행을 선택할 때 사용한다.
             * RowID: 테이블에 저장된 각각의 행들이 저장된 주소값을 의미함
			 * 1. 가장 최신글을 가져오기
			 * 2. Rownum을 기준으로 Rnum이라는 별칭을 사용하여 Rnum이 srtRow보다 크고, endRow보다
			 * 작은 경우에 해당하는 모든 레코드를 가져오게 한다.
			 * * 이 방식은 oracle에서만 가능하다.
		     */
			
			String sql = "select * from (select A.*, Rownum Rnum from (select * from smartboard order by ref desc, re_step asc) A) where Rnum >=? and Rnum <= ?";
		
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				boardBean bean = new boardBean();
				
				bean.setNum(rs.getInt(1));
				bean.setWriter(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setPassword(rs.getString(5));
				bean.setReg_date(rs.getDate(6).toString());
				bean.setRef(rs.getInt(7));
				bean.setRe_step(rs.getInt(8));
				bean.setRe_level(rs.getInt(9));
				bean.setReadCount(rs.getInt(10));
				bean.setContent(rs.getString(11)); 
				
				vb.add(bean);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return vb;
	}
	
	
}
