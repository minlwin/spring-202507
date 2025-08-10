package com.jdc.demo.model;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

import com.jdc.demo.BusinessException;

public class UserManager {
	
	private int id;
	private Map<Integer, UserDto> users = new LinkedHashMap<>();
	public static final String KEY = "USER_MANAGER";
	
	
	public int addUser(UserForm form) {
		var user = new UserDto(++ id, form);
		users.put(user.getId(), user);
		return user.getId();
	}
	
	public int updateUser(int id, UserForm form) {
		var user = users.get(id);
		
		if(null == user) {
			throw new BusinessException("There is no user with id %s.".formatted(id));
		}
		user.setName(form.getName());
		user.setPhone(form.getPhone());
		user.setEmail(form.getEmail());

		return id;
	}
	
	public void delete(int id) {
		var user = users.remove(id);
		if(null == user) {
			throw new BusinessException("There is no user with id %s.".formatted(id));
		}
	}
	
	public List<UserDto> search(String keyword) {
		
		Function<String, Boolean> startWith = (value) -> {
			if(null != value && null != keyword) {
				return value.toLowerCase().startsWith(keyword.toLowerCase());
			}
			return true;
		};
		
		return users.values().stream()
				.filter(user -> startWith.apply(user.getName()) 
						|| startWith.apply(user.getPhone())
						|| startWith.apply(user.getEmail()))
				.toList();
	}
	
	public UserDto findById(int id) {
		var user = users.get(id);
		
		if(null == user) {
			throw new BusinessException("There is no user with id %s.".formatted(id));
		}
		
		return user;
	}
	
}
