package com.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.G_DAO;

public class likeCheck_action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/etc/likeCheck.jsp";
		G_DAO gD = G_DAO.getInstance();
		String stat = request.getParameter("stat");
		int id = Integer.parseInt(request.getParameter("id"));
		if(stat.equals("0")){
			gD.likeMinus(id);
		}else if(stat.equals("1")) {
			gD.likePlus(id);
		}
		int like = gD.likeCount(id);
		request.setAttribute("like", like);
		request.setAttribute("stat", stat);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
