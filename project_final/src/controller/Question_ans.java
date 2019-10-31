package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Mail_DAO;
import com.model.Mail_DTO;

@WebServlet("/Question_ans")
public class Question_ans extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		PrintWriter out = response.getWriter();
		
		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		String num_str = request.getParameter("num_str");
		// 넘이 넘어오냐 ? 확인하기 

		String ans_text = request.getParameter("Question_ans_text");
		System.out.println(num_str + ans_text);
		
		Mail_DAO dao = new Mail_DAO();
		
		Mail_DTO dto = new Mail_DTO(num_str , ans_text);
		
		
		int cnt =  dao.setAnswer(dto);
		System.out.println("servlert > " + cnt);
		if (cnt > 0 ) {
			response.sendRedirect("Question.jsp");
			
		}
		else {

			response.sendRedirect("index.jsp");
		}
		
		
	}

}
