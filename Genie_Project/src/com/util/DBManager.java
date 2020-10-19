package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {
	public static Connection getConnection() {
		//DB접속
//		String user="sys as sysdba";
//		String password="1234";
//		String url="jdbc:oracle:thin:@localhost:1521/xe";
		
		Connection con = null;
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			// jdbc/myoracle이란 이름을 객체를 찾아서 DataSource가 받는다.
			DataSource ds = (DataSource) envContext.lookup("jdbc/pool");
			// ds가 생성되었으므로 Connection을 구합니다.
			con = ds.getConnection();
			
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//			con=DriverManager.getConnection(url, user, password);
			
			System.out.println("DB 연결 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	// select을 수행한 후 리소스 해제를 위한 메소드
	public static void close(Connection con, Statement stmt, ResultSet rs) {
		try {
			rs.close();
			stmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// DML(insert, update, delete)을 수행한 후 리소스 해제를 위한 메소드
	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void close(Connection con, PreparedStatement pstmt) {
		try {
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
