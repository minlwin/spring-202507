package com.jdc.demo.listener;

import com.jdc.demo.model.UserManager;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class UserManagerRegistrationListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent sce)  { 
    	
    	var context = sce.getServletContext();
    	var manager = new UserManager();
    	context.setAttribute(UserManager.KEY, manager);

    }

    public void contextDestroyed(ServletContextEvent sce)  { 

    }
	
}
