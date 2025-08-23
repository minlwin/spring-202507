package com.jdc.scopes.model.dto;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import lombok.Data;

@Data
public class Sales {

	private User user;
	private LocalDateTime saleAt;
	private List<CartItem> items;
	
	private static final DateTimeFormatter DF = DateTimeFormatter.ofPattern("MMM dd, yyyy HH:mm");
	
	public String getSaleAtValue() {
		return saleAt.format(DF);
	}
	
	public int getTotalItem() {
		return items.stream().mapToInt(a -> a.getQuantity()).sum();
	}
	
	public int getTotalAmount() {
		return items.stream().mapToInt(a -> a.getTotal()).sum();
	}
}
