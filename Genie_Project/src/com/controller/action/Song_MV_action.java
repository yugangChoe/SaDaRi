package com.controller.action;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.G_DAO;
import com.dto.SongVO;

public class Song_MV_action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//MV플레이어와 연동
		//한곡 플레이만 가능
		String url = "/etc/MVplay.jsp";
		G_DAO gD = G_DAO.getInstance();
		int songId=Integer.parseInt(request.getParameter("songid"));
		SongVO songList = gD.selectOneSong(songId);
		request.setAttribute("url", songList.getG_url());
		request.setAttribute("songList", songList);//songID
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
