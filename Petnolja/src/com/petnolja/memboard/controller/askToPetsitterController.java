package com.petnolja.memboard.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petnolja.common.model.vo.PageInfo;
import com.petnolja.memboard.model.service.MemBoardService;
import com.petnolja.memboard.model.vo.MemBoard;

/**
 * Servlet implementation class askToPetsitterController
 */
@WebServlet("/askPet.me")
public class askToPetsitterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public askToPetsitterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sno=0;
		if(request.getSession().getAttribute("loginUser") == null) {
			
			request.getSession().setAttribute("alertMsg", "로그인 후 이용가능한 서비스입니다.");
			response.sendRedirect(request.getContextPath());
		
		}else { 
		
			sno = Integer.parseInt(request.getParameter("sno"));
			
			int listCount = new MemBoardService().askToPet(sno);
			int currentPage = Integer.parseInt(request.getParameter("currentPage"));
	   		int pageLimit = 10;
	   		int boardLimit = 10;
	   		int maxPage = (int)Math.ceil((double)listCount / boardLimit);	
	   		int startPage = (currentPage - 1) / pageLimit * pageLimit + 1;		 
	   		int endPage = startPage + pageLimit - 1;
	   		
	   		if(endPage > maxPage) {
	   			endPage = maxPage;
	   		}
			
	   		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
			ArrayList<MemBoard> list = new MemBoardService().selectAsktoPet(pi, sno);
	
			request.setAttribute("sno", sno);		
			request.setAttribute("pi", pi);
			request.setAttribute("list", list);
			request.getRequestDispatcher("views/memboard/askToPetsitterList.jsp").forward(request, response);
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
