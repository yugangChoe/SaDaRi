package com.controller.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
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
		
		String url = "/etc/play.jsp";
		G_DAO gD = G_DAO.getInstance();
		Cookie []cookies=request.getCookies();
		Vector<SongVO> songList =new Vector<SongVO>(); //쿠키 기반 DB 값 불러와서 저장
		List<Integer> info_num=new ArrayList<Integer>(); //쿠키에 저장된 songId 불러와서 저장
		
		int cookie=Integer.parseInt(request.getParameter("cookie"));
		String songId=request.getParameter("songid");
		
		if (cookie==1) { //곡 추가
			
			if(cookies != null) { //기존에 곡 있을때 
				System.out.println("ac8");
				for(int i=0;i<cookies.length;i++) {
					int a=Integer.parseInt(cookies[i].getValue());
					info_num.add(a);
				}
				Cookie songCookie=new Cookie("song",songId); //쿠키 생성
				songCookie.setPath("/"); //모든경로에서 접근 가능
				songCookie.setMaxAge(60*60*12); //12시간
				response.addCookie(songCookie); //응답에 쿠키 추가
				info_num.add(Integer.parseInt(songId));
			}
			for(int i=0;i<info_num.size();i++) {
				SongVO sVo=gD.selectOneSong(info_num.get(i));
				songList.add(sVo);
				
			}
			
		}else if(cookie==0) { //한곡 재생
			if(cookies!=null) {
				for(int i=0;i<cookies.length;i++) {
					cookies[i].setMaxAge(0); //쿠키 유효시간을 0으로 설정하여 만료
					response.addCookie(cookies[i]); //응답에 쿠키 추가
				}
			}
			Cookie songCookie=new Cookie("song",songId); //쿠키 생성
			songCookie.setPath("/"); //모든경로에서 접근 가능
			songCookie.setMaxAge(60*60*24); //하루
			response.addCookie(songCookie); //쿠키 추가
			info_num.add(Integer.parseInt(songId));
			
			for(int i=0;i<info_num.size();i++) {
				SongVO sVo=gD.selectOneSong(info_num.get(i));
				songList.add(sVo);
				
			}
			
		}
		request.setAttribute("songList", songList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
