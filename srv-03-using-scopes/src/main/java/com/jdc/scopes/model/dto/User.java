package com.jdc.scopes.model.dto;

import java.io.Serializable;

import lombok.Data;

@Data
public class User implements Serializable{

	private static final long serialVersionUID = 1L;

	public static final String KEY = "USER";
	
	private String name;
	private String email;

}
