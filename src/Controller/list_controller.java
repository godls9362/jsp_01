package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MemberDAO;
import DTO.MemberDTO;
//개인아이디 화면
/**
 * Servlet implementation class list_controller
 */
@WebServlet("/plist.do")
public class list_controller extends HttpServlet {
	MemberDAO mdao = MemberDAO.getinstance();
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public list_controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		// controller 셋팅
		response.setContentType("text/html: utf-8");
		request.setCharacterEncoding("utf-8");
		
		
		String no=request.getParameter("number");

		ArrayList<MemberDTO> mlist = mdao.selectOne(Integer.valueOf(no));
		request.setAttribute("Mlist", mlist);
		RequestDispatcher disp = request.getRequestDispatcher("write_temp.jsp");
		disp.forward(request, response);		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
