package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
	//��дdoGet��doPost����
		@Override
		protected void doGet(HttpServletRequest requset, HttpServletResponse response)
				throws ServletException, IOException {
			// TODO Auto-generated method stub
			System.out.println("����get��������");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=utf-8");
			out.print("<strong>HelloServlet</strong></br>");//Ȼ����Ҫע�ᣬ��web.xml��
		}

		@Override
		protected void doPost(HttpServletRequest requset, HttpServletResponse response)
				throws ServletException, IOException {
			// TODO Auto-generated method stub
			System.out.println("����post��������");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=utf-8");
			out.print("<strong>HelloServlet</strong></br>");//Ȼ����Ҫע�ᣬ��web.xml��
		
		}


}
