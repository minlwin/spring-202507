package com.jdc.scopes.filter;

import java.io.IOException;

import com.jdc.scopes.model.dto.User;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebFilter("/checkout")
public class CheckoutFilter extends HttpFilter{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doFilter(
			HttpServletRequest req, 
			HttpServletResponse res, 
			FilterChain chain)
			throws IOException, ServletException {
		
		// Before passing chain
		var session = req.getSession(true);
		if(session.getAttribute(User.KEY) == null) {
			// redirect to login page
			res.sendRedirect(getServletContext().getContextPath().concat("/signin"));
		}
		
		chain.doFilter(req, res);
		
		// After responding from servlet
	}
}
