package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import com.dto.JoinVO;
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
		String sql = "select * from genie order by songid asc";
		Vector<SongVO> vec = new Vector<SongVO>(700);
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
				sVo.setG_url1m(rs.getString("g_url1m"));
				sVo.setG_url(rs.getString("g_url"));
				sVo.setCopyright(rs.getInt("copyright"));
				vec.add(sVo);
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
				sVo.setG_url1m(rs.getString("g_url1m"));
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
					sVo.setG_url1m(rs.getString("g_url1m"));
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
	public JoinVO checkId(String id) {
		String sql = "select * from genie_member where id=?";
		JoinVO jVo=new JoinVO();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				jVo.setName(rs.getString("name"));
				jVo.setBirth(rs.getInt("birth"));
				jVo.setId(rs.getString("id"));
				jVo.setPwd(rs.getNString("pwd"));
				jVo.setEmail(rs.getString("email"));
				jVo.setPhone(rs.getInt("phone"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		return jVo;
	}

	// 회원 가입 
	public void insertMember(JoinVO bean) {
		String sql = "insert into genie_member values(?,?,?,?,?,?)";
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			 pstmt.setString(1, bean.getName());
			 pstmt.setInt(2, bean.getBirth());
			 pstmt.setString(3, bean.getId());
			 pstmt.setString(4, bean.getPwd());
			 pstmt.setString(5, bean.getEmail());
			 pstmt.setInt(6, bean.getPhone());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt);
		}
	}
}
