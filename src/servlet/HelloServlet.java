package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
	//重写doGet和doPost方法
		@Override
		protected void doGet(HttpServletRequest requset, HttpServletResponse response)
				throws ServletException, IOException {
			// TODO Auto-generated method stub
			System.out.println("处理get（）请求");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=utf-8");
			out.print("<strong>HelloServlet</strong></br>");//然后需要注册，在web.xml中
		}

		@Override
		protected void doPost(HttpServletRequest requset, HttpServletResponse response)
				throws ServletException, IOException {
			// TODO Auto-generated method stub
			System.out.println("处理post（）请求");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=utf-8");
			out.print("<strong>HelloServlet</strong></br>");//然后需要注册，在web.xml中
		
		}


}
