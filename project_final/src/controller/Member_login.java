package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.*;

@WebServlet("/Member_login")
public class Member_login extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");


		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String review_login = request.getParameter("reviewLogin");
		
		Member_DAO dao = new Member_DAO();
		Member_DTO dto = new Member_DTO(email, pw);
		
		
		boolean isCon =  dao.login(dto);
		
		
		
		if( isCon == true ) {			
			

			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			
			if (email.equals("admin@admin.com")) 
				System.out.println("관리자로그인");
				
			
			if(review_login!= null) 
				response.sendRedirect("review.jsp");
			
			else
				response.sendRedirect("index.jsp");
		
		}
		else {
	
			response.sendRedirect("login.jsp");			
		}
		
	}

}
