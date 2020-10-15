package com.controller.action;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.G_DAO;
import com.dto.SongVO;

public class Song_Info_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//앨범정보와 연동
		String url = "앨범정보창.jsp";
		G_DAO gD = G_DAO.getInstance();
		int songId=Integer.parseInt(request.getParameter("songid"));
		SongVO songList = gD.selectOneSong(songId);
		request.setAttribute("songList", songList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
