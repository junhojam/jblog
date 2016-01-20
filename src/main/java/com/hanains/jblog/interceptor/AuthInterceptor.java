package com.hanains.jblog.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.hanains.jblog.annotation.Auth;
import com.hanains.jblog.vo.UserVo;

public class AuthInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		if(handler instanceof HandlerMethod == false){
			return true;
		}
		Auth auth = ((HandlerMethod)handler).getMethodAnnotation(Auth.class);
		//dispatcher Handler Method.
		if(auth == null){
			return true;
		}
		
		HttpSession session = request.getSession();
		System.out.println("AuthInterceptor.PreHandler.Called");
		if(session == null){
			response.sendRedirect(request.getContextPath()+"/user/login");
			return false;
		}
		UserVo vo = (UserVo)session.getAttribute("authUser");
		if(vo == null){
			response.sendRedirect(request.getContextPath()+"/user/login");
			return false;
		}
		return true;
	}
}
