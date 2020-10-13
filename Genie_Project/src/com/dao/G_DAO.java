package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import com.dto.SongVO;
import com.util.DBManager;

public class G_DAO {
	private static G_DAO instance = new G_DAO();

	private G_DAO() {
		super();
	}

	public static G_DAO getInstance() {
		return instance;
	}

	// 전곡정보 불러오기
	public Vector<SongVO> selectAllSong() {
		String sql = "select * from genie order by sonid asc";
		Vector<SongVO> vec = new Vector<SongVO>();
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				SongVO sVo = new SongVO();
				sVo.setSongid(rs.getInt("songid"));
				sVo.setTitle(rs.getString("title"));
				sVo.setArtist(rs.getString("artist"));
				sVo.setAlbum(rs.getString("album"));
				sVo.setGenre(rs.getString("genre"));
				sVo.setG_style(rs.getString("g_style"));
				sVo.setPublisher(rs.getString("publisher"));
				sVo.setAgency(rs.getString("agency"));
				sVo.setG_date(rs.getString("g_date"));
				sVo.setG_like(rs.getInt("g_like"));
				sVo.setG_url1m1(rs.getString("g_url1m1"));
				sVo.setG_url(rs.getString("g_url"));
				sVo.setCopyright(rs.getInt("copyright"));
				vec.add(sVo.getSongid(), sVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, stmt, rs);
		}
		return vec;
	}

	// 한곡정보 불러오기
	public SongVO selectOneSong(int songId) {
		String sql = "select * from genie where songid=?";
		SongVO sVo = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, songId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				sVo = new SongVO();
				sVo.setSongid(rs.getInt("songid"));
				sVo.setTitle(rs.getString("title"));
				sVo.setArtist(rs.getString("artist"));
				sVo.setAlbum(rs.getString("album"));
				sVo.setGenre(rs.getString("genre"));
				sVo.setG_style(rs.getString("g_style"));
				sVo.setPublisher(rs.getString("publisher"));
				sVo.setAgency(rs.getString("agency"));
				sVo.setG_date(rs.getString("g_date"));
				sVo.setG_like(rs.getInt("g_like"));
				sVo.setG_url1m1(rs.getString("g_url1m1"));
				sVo.setG_url(rs.getString("g_url"));
				sVo.setCopyright(rs.getInt("copyright"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		return sVo;

	}

	// 여러곡 정보 불러오기 - 대기
	public List<SongVO> selectSongs(String songId[]) {
		String sql = "select * from genie where songid=?";
		List<SongVO> list = new ArrayList<SongVO>();
		SongVO sVo = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		for (int i = 0; i < songId.length; i++) {

			try {
				con = DBManager.getConnection();
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, songId[i]);
				rs = pstmt.executeQuery();

				while (rs.next()) {
					sVo = new SongVO();
					sVo.setSongid(rs.getInt("songid"));
					sVo.setTitle(rs.getString("title"));
					sVo.setArtist(rs.getString("artist"));
					sVo.setAlbum(rs.getString("album"));
					sVo.setGenre(rs.getString("genre"));
					sVo.setG_style(rs.getString("g_style"));
					sVo.setPublisher(rs.getString("publisher"));
					sVo.setAgency(rs.getString("agency"));
					sVo.setG_date(rs.getString("g_date"));
					sVo.setG_like(rs.getInt("g_like"));
					sVo.setG_url1m1(rs.getString("g_url1m1"));
					sVo.setG_url(rs.getString("g_url"));
					sVo.setCopyright(rs.getInt("copyright"));
					list.add(sVo);
				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(con, pstmt, rs);
			}
		}
		return list;

	}

	// 좋아요 갯수 불러오기
	public Integer likeCount(int songId) {
		String sql = "select g_like from genie where songid=?";
		int count = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, songId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt("g_like");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		return count;

	}

	// 좋아요 +1
	public void likePlus(int songId) {
		String sql = "update genie set g_like=g_like+1 where songid=?";
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, songId);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt);
		}
	}

	// 좋아요 -1
	public void likeMinus(int songId) {
		String sql = "update genie set g_like=g_like-1 where songid=?";
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, songId);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt);
		}
	}

	// 유저 정보 확인 - 작성중
	public void checkId(String id) {
		String sql = "select * from 테이블명 where id=?";
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				// 유저정보bean 생성 후 데이터 리턴 하여 삽입
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	// 회원 가입 - 작성중
	public void insertMember() {
		String sql = "insert into member? values(?,?,?)";
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			// pstmt.setString(1, id);
			// pstmt.setString(2, pwd);
			// 회원가입에 유저정보는 뭐뭐 넣을것인지 확인
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt);
		}
	}
}
