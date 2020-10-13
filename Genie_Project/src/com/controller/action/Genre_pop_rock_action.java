package com.controller.action;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.G_DAO;
import com.dto.SongVO;

public class Genre_pop_rock_action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/Genre/Genre_pop_rock.jsp";
		G_DAO gD = G_DAO.getInstance();
		Vector<SongVO> songList = gD.selectAllSong();
		request.setAttribute("songList", songList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
