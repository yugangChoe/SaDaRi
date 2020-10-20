package com.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.G_DAO;
import com.dto.JoinVO;

public class JoinForm_action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//작성중
		JoinVO join = new JoinVO();
		join.setName(request.getParameter("name"));
		join.setBirth(Integer.parseInt(request.getParameter("birth")));
		join.setId(request.getParameter("id"));
		join.setPwd(request.getParameter("pwd"));
		join.setEmail(request.getParameter("email"));
		join.setPhone(Integer.parseInt(request.getParameter("phone")));
		System.out.println(join.getName() + ":" + join.getBirth() + ":" + join.getId() + ":" + join.getPwd() + ":"
				+ join.getEmail() + ":" + join.getPhone());
		G_DAO gD = G_DAO.getInstance();
		gD.insertMember(join);
		//메인페이지로 링크
		new Login_action().execute(request, response);
	}

}
