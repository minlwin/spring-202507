package com.jdc.demo;

import java.io.IOException;

import com.jdc.demo.model.UserManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/users")
public class UserSearchServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private UserManager userManager;
	
	@Override
	public void init() throws ServletException {
		if(getServletContext().getAttribute(UserManager.KEY) instanceof UserManager um) {
			userManager = um;
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Show User List
		var keyword = req.getParameter("keyword");
		
		var list = userManager.search(keyword);
		req.setAttribute("list", list);
		
		var dispatcher = getServletContext().getRequestDispatcher("/user-list.jsp");
		dispatcher.forward(req, resp);
	}
}
