package n17dccn157.buingoctuan.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import n17dccn157.buingoctuan.entity.Account;

public class SecurityAdminInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception {
		HttpSession session = request.getSession();
		if(session.getAttribute("admin")== null ) {
			response.sendRedirect(request.getContextPath() + "/admin/login.htm");
			System.out.println("Do Login Admin :)");
			return false;
		}
		return true;
	}
}
