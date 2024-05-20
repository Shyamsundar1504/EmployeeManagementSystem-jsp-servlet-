package com.employeeManagementSystem.controller;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;

/*this filter intercepts incoming requests,modifies the HTTP response headers to prevent caching,and then passes
 *  the request and response down the filter chain for further processing.This helps ensure that clients receive 
 *  fresh content from the server and don'trely on cached responses.
*/
@WebFilter("/*")

public class NoCacheFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletResponse httpResponse = (HttpServletResponse) response;

		// Set cache control headers to prevent caching for all requests
		httpResponse.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		httpResponse.setHeader("Pragma", "no-cache"); 
		httpResponse.setDateHeader("Expires", 0); 
		chain.doFilter(request, response);
	}

	
	
}
