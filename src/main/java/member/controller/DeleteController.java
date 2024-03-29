package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;



/**
 * Servlet implementation class DeleteController
 */
@WebServlet("/member/delete.do")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MemberService service = new MemberService();
		// DELETE FROM MEMBER_TBL WHERE NUMBER_ID = ?
		String memberId = request.getParameter("memberId");
		int result = service.deleteMember(memberId);
		if(result > 0) {
			// 성공
			// 페이지 이동 2가지
			// 1. with Data
			request.setAttribute("msg", "회원 탈퇴 성공!");
			request.setAttribute("url", "/member/logout.do");
			RequestDispatcher view = request.getRequestDispatcher("/common/serviceSuccess.jsp");
			view.forward(request, response);  // 누락주의!
			// 2. without Data
//			response.sendRedirect("/member/serviceSuccess.jsp");
		}else {
			// 실패
			request.setAttribute("msg", "회원 탈퇴를 완료하지 못했습니다.");
			RequestDispatcher view = request.getRequestDispatcher("/common/serviceFail.jsp");
			view.forward(request, response);  // 누락주의!
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
