package com.jdc.scopes;

import java.io.IOException;

import com.jdc.scopes.model.dto.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signin")
public class SigninServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/signin.jsp")
			.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		var user = new User();
		user.setName(req.getParameter("name"));
		user.setEmail(req.getParameter("email"));
		
		var session = req.getSession(true);
		session.setAttribute(User.KEY, user);
		
		resp.sendRedirect(getServletContext().getContextPath().concat("/checkout"));
	}
}
