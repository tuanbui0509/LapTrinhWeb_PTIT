package n17dccn157.buingoctuan.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SecurityUserInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception {
		HttpSession session = request.getSession();
		if(session.getAttribute("user") == null) {
			response.sendRedirect(request.getContextPath() + "/user/login.htm");
			System.out.println("Do Login :)");
			return false;
		}
		return true;
	}
	
}
