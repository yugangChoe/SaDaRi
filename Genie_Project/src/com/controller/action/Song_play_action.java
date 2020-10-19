package com.controller.action;

import java.io.IOException;
import java.util.List;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.G_DAO;
import com.dto.SongVO;

public class Song_play_action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//작성중
		//웹플레이어와 연동
		//한곡 플레이시 및 여러곡 플레이시 확인 요
		String url = "play.jsp";
		G_DAO gD = G_DAO.getInstance();
		
		int songId=Integer.parseInt(request.getParameter("songid"));
		SongVO songList = gD.selectOneSong(songId);
		request.setAttribute("songList", songList);
		
//		String songId[]=request.getParameterValues("songid");
//		List<SongVO> songList =null; 
//		for(int i=0;i<request.getParameterValues("songid").length;i++) {
//			SongVO sVo=gD.selectOneSong(Integer.parseInt(songId[i]));
//			songList.add(sVo);
//		}
//		for(int i=0;i<songList.size();i++) {
//			System.out.println(songList.get(i));
//		}
//		request.setAttribute("songList", songList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
