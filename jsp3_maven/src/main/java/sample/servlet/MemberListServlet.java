package sample.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * url을 주소창에 http://localhost:8081/jsp3_maven/member/list.do
 * 입력하고 엔터를 치면 실행되는 자바 서블릿
 * url 매핑 : 방법 1. 어노테이션 사용.
 * 			 방법 2. web.xml에서 servlet 태그로 설정하기
 */
@WebServlet("/member/list.do")
public class MemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberListServlet() {
        super();
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	// service가 재정의 메소드로 보이면 doGet 또는 doPost 메소드는 실행되지 않는다.
	/*
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().print("I am service method!!");
	}
	/*
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter(); // html로 보낼 출력스트림 객체 생성.
							// html 문서는 http 응답으로 전달되므로 출력스트림은 response 객체로 생성
		out.append("Served at: ")
		   .append(request.getContextPath())
		   .append("<br>") // html 태그 안에 있을 때만 동작합니다.
		   .append(request.getRequestURL())
		   .append(request.getCharacterEncoding());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
