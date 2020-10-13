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

/**
 * Servlet implementation class TestController
 */
@WebServlet("/input.do")
public class TestController extends HttpServlet {
	MemberDAO mdao = MemberDAO.getinstance();
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TestController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		// controller 셋팅
		response.setContentType("text/html: utf-8");
		request.setCharacterEncoding("utf-8");

		// String unum = request.getParameter("inumber");
		String uname = request.getParameter("iname");
		// String uaddr = request.getParameter("iaddr");
		// String utel = request.getParameter("itel");
		// String utype = request.getParameter("itype");
		/// String udate = request.getParameter("idate");
		// 취미
		String[] uhobby = request.getParameterValues("userhobby");

		// ---> forward 방식의 시작
		// Step 1
		// request.setAttribute("usernumber", unum);
		// request.setAttribute("username", uname);
		// request.setAttribute("useraddr", uaddr);
		// request.setAttribute("usertel", utel);
		// request.setAttribute("usertype", utype);
		// request.setAttribute("userdate", udate);

		// request.setAttribute("ihobbylist", uhobby);

		// Step 2

		String temp = null;
		for (int i = 0; i < uhobby.length; i++) {
			if (temp != null) {
				temp = temp + uhobby[i] +" ";
			}else {
				temp=uhobby[i];
			}
		}

		MemberDTO dto = new MemberDTO();
		dto.setNumber(request.getParameter("inumber"));
		dto.setName(request.getParameter("iname"));
		dto.setTel(request.getParameter("itel"));
		dto.setAddr(request.getParameter("iaddr"));
		dto.setType(request.getParameter("itype"));
		dto.setDate(request.getParameter("idate"));
		dto.setHobby(temp);
		mdao.insert(dto);
		// dto.setDate(udate);
		// dto.setNumber(Integer.valueOf(unum));
		// dto.setTel(utel);

		/*
		 * //Step4완료! ArrayList<MemberDTO> mlist=mdao.selectOne(uname);
		 * request.setAttribute("Mlist", mlist); RequestDispatcher disp =
		 * request.getRequestDispatcher("write_temp.jsp"); disp.forward(request,
		 * response);
		 */

		// Step3
		ArrayList<MemberDTO> list = mdao.selectAll();
		request.setAttribute("mlist", list);
		RequestDispatcher disp2 = request.getRequestDispatcher("list.jsp");
		disp2.forward(request, response);

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
		 *      response)
		 */

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// client가 post방식으로 데이터를 보내도 doget이라는 메서드를 호출한다.
		doGet(request, response);
	}

}