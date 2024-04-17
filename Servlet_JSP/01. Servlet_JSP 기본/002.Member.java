package bit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Member
 */
@WebServlet("/Member")
public class Member extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Member() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String regnum = request.getParameter("regnum");
		String regnum2 = request.getParameter("regnum2");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String pwdconfirm = request.getParameter("pwdconfirm");
		String email = request.getParameter("email");
		String domain = request.getParameter("email2");
		String mailnum = request.getParameter("mailnum");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String tel = request.getParameter("tel");
		String job = request.getParameter("job");
		String allowMail = request.getParameter("allowMail");
		
		PrintWriter out = response.getWriter();
		out.println("이름: " + name + "<br>");
		out.println("주민등록번호: " + regnum + "-" + regnum2 + "<br>");
		out.println("아이디: " + id + "<br>");
		out.println("비밀번호: " + pwd + "<br>");
		out.println("비밀번호 확인: " + pwdconfirm + "<br>");
		out.println("이메일: " + email + "@" + domain + "<br>");
		out.println("우편번호: " + mailnum + "<br>");
		out.println("주소: " + addr1 + addr2 +"<br>");
		out.println("전화번호: " + tel + "<br>");
		out.println("직업: " + job + "<br>");
		out.println("메일/SMS 정보 수신: " + allowMail + "<br>");
		
		
		
	}

}
