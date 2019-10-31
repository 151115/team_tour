package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Mail_DAO;
import com.model.Mail_DTO;

@WebServlet("/Mail_Send")
public class Mail_Send extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		
		
		String email = request.getParameter("Q_email");
		String Name = request.getParameter("Q_Name");
		String text = request.getParameter("Q_text");
		
		
		
		Mail_DAO dao = new Mail_DAO();
		Mail_DTO dto = new Mail_DTO(Name , email, text);
		String message="";
		
		
		int cnt = dao.setMail(dto);

		PrintWriter out = response.getWriter();
		String str_alert="";
		
		
		System.out.println("두구 > ");
		out.println("<script>");
		
		
		if (cnt > 0) {

			System.out.println(email);
			message="문의사항이 전달되었습니다";
		}
		
		else {
			System.out.println(Name);
			message="양식을 다시 확인해주세요";
			
		}
		str_alert = "alert('" + message + "');" ;
		out.println(str_alert);
		out.println("location='index.jsp';");
		out.println("</script>");


	}

}
