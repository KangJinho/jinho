package com.nail.rin.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse respone, Object handler)
	throws Exception{
		HttpSession session = request.getSession();
		
		String loginId=(String)session.getAttribute("loginId");
		if(loginId == null) {
			String path = request.getContextPath()+"/login";
			respone.sendRedirect(path);
			return false;
		}
		
		return super.preHandle(request,respone,handler);
		
	}
}
