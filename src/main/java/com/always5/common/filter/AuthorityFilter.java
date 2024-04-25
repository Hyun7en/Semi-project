package com.always5.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter(urlPatterns= {""})
public class AuthorityFilter implements Filter {

    /**
     * Default constructor. 
     */
    public AuthorityFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		//권한에 따른 페이지 접근 제한
		HttpServletRequest httpRequest = (HttpServletRequest)request;
		HttpServletResponse httpResponse = (HttpServletResponse)response;
		
		//authority가 Y면 관리자 페이지 접근 가능
		//authority가 N이면 일반 사용자 페이지만 접근 가능
		if (httpRequest.getSession().getAttribute("loginUser") == null) {
			//로그인 안한 경우
			httpResponse.sendRedirect(httpRequest.getContextPath()); // 메인으로 보내기
		} else {
			//로그인 한 경우
			//로그인한 사용자가 관리자인 경우
			if (httpRequest.getSession().getAttribute("loginUser.getAuthority()") == "Y") {
				//관리자 페이지 접근 가능
				chain.doFilter(request, response);
				//로그인한 사용자가 일반 사용자인 경우
			} else {
				httpResponse.sendRedirect(httpRequest.getContextPath()); // 메인으로 보내기
			}
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}