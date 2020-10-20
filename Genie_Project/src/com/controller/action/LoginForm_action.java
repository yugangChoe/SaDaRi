package com.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.G_DAO;
import com.dto.JoinVO;

public class LoginForm_action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/etc/LoginForm.jsp";
		G_DAO gD = G_DAO.getInstance();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		JoinVO user = gD.checkId(id);
		request.setAttribute("result", user);
		request.setAttribute("pw", pw);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
