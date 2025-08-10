package com.jdc.demo;

import java.io.IOException;

import com.jdc.demo.model.UserForm;
import com.jdc.demo.model.UserManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/edit-user")
public class UserEditServlet extends HttpServlet{

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
		var dispatcher = getServletContext().getRequestDispatcher("/user-edit.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		var name = req.getParameter("name");
		var phone = req.getParameter("phone");
		var email = req.getParameter("email");
		
		var form = new UserForm();
		form.setName(name);
		form.setPhone(phone);
		form.setEmail(email);
		
		var id = userManager.addUser(form);

		resp.sendRedirect(getServletContext().getContextPath()
				.concat("/user-details?id=%s".formatted(id)));
	}
}
