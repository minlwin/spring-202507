package com.jdc.scopes.model;

import java.util.ArrayList;
import java.util.List;

import com.jdc.scopes.model.dto.Sales;

public class SaleManager {

	public static final String KEY = "SaleManager";

	private List<Sales> sales;
	
	public void create(Sales sale) {
		
		if(null == sales) {
			sales = new ArrayList<Sales>();
		}
		
		sales.add(sale);
	}
	
	public List<Sales> getSales() {
		return sales;
	}

}
