<%@page import="com.hanains.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	Long no=Long.parseLong(request.getParameter("no"));
	String password=request.getParameter("password");
	
	GuestBookDao dao=new GuestBookDao();
	
	dao.delete(no, password);
	
	response.sendRedirect("/guestbook");

%>