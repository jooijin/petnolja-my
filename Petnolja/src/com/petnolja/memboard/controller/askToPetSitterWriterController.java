package com.petnolja.memboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petnolja.member.model.vo.Member;
import com.petnolja.memboard.model.service.MemBoardService;

/**
 * Servlet implementation class askToPetSitterWriterController
 */
@WebServlet("/askToWriter2.me")
public class askToPetSitterWriterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public askToPetSitterWriterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int sno= Integer.parseInt(request.getParameter("sno"));
		int userNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		
		String title= request.getParameter("title");
		String content= request.getParameter("content");
		
		int result = new MemBoardService().askPetSitterInsert(userNo, sno, title, content);
		
		
		if(result > 0) {
			
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "등록되었습니다.");
			
			response.sendRedirect(request.getContextPath() + "/askPet.me?sno="+sno+"&currentPage=1");
			
		}else {
			
			request.setAttribute("errorMsg", "에러가 발생했습니다");
			
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			
		}

	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
