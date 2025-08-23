package com.jdc.scopes;

import java.io.IOException;
import java.time.LocalDateTime;

import com.jdc.scopes.model.SaleManager;
import com.jdc.scopes.model.ShoppingCart;
import com.jdc.scopes.model.dto.Sales;
import com.jdc.scopes.model.dto.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private SaleManager saleManager;
	
	@Override
	public void init() throws ServletException {
		if(getServletContext().getAttribute(SaleManager.KEY) instanceof SaleManager sm) {
			this.saleManager = sm;
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		var session = req.getSession(true);
		
		// Get Shopping Cart and User from session
		if(session.getAttribute("cart") instanceof ShoppingCart cart
				&& session.getAttribute(User.KEY) instanceof User user) {
			
			// Add Sale Info
			var sale = new Sales();
			sale.setSaleAt(LocalDateTime.now());
			sale.setUser(user);
			sale.setItems(cart.getItems());
			
			saleManager.create(sale);
			
			session.removeAttribute("cart");
			
			// Show Invoices for User
			req.setAttribute("sales", saleManager.getSales());
			
			getServletContext().getRequestDispatcher("/sales.jsp")
				.forward(req, resp);
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
