package com.jdc.demo;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({
	"/users",
	"/edit-user"
})
public class UserServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		var requestUrl = req.getServletPath();
		
		if("/users".equals(requestUrl)) {

			req.setAttribute("list", List.of(
				new UserDto("Thidar", "09181817171", "thidar@gmail.om"),
				new UserDto("Nilar", "0928882727", "nilar@gmail.com"),
				new UserDto("Aung Aung", "09736365633", "aung@gmail.com")
			));

			// Show User List
			var dispatcher = getServletContext().getRequestDispatcher("/user-list.jsp");
			dispatcher.forward(req, resp);
		} else if("/edit-user".equals(requestUrl)) {
			// Show Edit View
			var dispatcher = getServletContext().getRequestDispatcher("/user-edit.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
