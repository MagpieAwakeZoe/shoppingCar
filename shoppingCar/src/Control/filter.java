package Control;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;
import java.io.IOException;

/**
 * Created by by on 2017/6/10.
 */
public class filter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest Request = (HttpServletRequest) servletRequest;
        HttpServletResponse Response = (HttpServletResponse) servletResponse;
            Request.setCharacterEncoding("utf-8");
            Response.setContentType("text/html,charset=utf-8");
            filterChain.doFilter(Request,Response);
    }

    @Override
    public void destroy() {

    }
}
