package bit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ParanServlet
 */
@WebServlet("/ParanServlet")
public class ParanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		int age = Integer.parseInt(request.getParameter("age"));
		//request = 사용자의 요청(request)을 담는 객체. 쿼리스트링의 name값을 파라미터로 받아온다.
		//getParameter 의 반환형은 String 이라서 다른 타입으로 사용하려면 변환해줘야 한다.
		
		PrintWriter out = response.getWriter();
		out.println("아이디: " + id + "<br>");
		out.println("나이: " + age + "<br>");		
		out.println("<a href='javascript:history.go(-1)'>이전 페이지</a>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
