package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MemberDAO;
import DTO.MemberDTO;

/**
 * Servlet implementation class update
 */
@WebServlet("/update.do")
public class update extends HttpServlet {
	MemberDAO mdao=MemberDAO.getinstance();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		// controller ¼ÂÆÃ
				response.setContentType("text/html: utf-8");
				request.setCharacterEncoding("utf-8");
				String[] uhobby = request.getParameterValues("ihobby");
				String temp = null;
				for (int i = 0; i < uhobby.length; i++) {
					if (temp != null) {
						temp = temp + uhobby[i] +" ";
					}else {
						temp=uhobby[i];
					}
				}
		MemberDTO dto = new MemberDTO();
		dto.setNumber(request.getParameter("inputNum"));
		dto.setName(request.getParameter("iname"));
		dto.setTel(request.getParameter("itel"));
		dto.setAddr(request.getParameter("iaddr"));
		dto.setType(request.getParameter("itype"));
		dto.setDate(request.getParameter("idate"));
		dto.setHobby(temp);
		mdao.updateOne(dto);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
