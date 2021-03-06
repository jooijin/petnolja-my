package com.petnolja.notice.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.petnolja.common.Attachment;
import com.petnolja.common.MyFileRenamePolicy;
import com.petnolja.notice.model.service.NoticeService;
import com.petnolja.notice.model.vo.Notice;

/**
 * Servlet implementation class AdminNoticeInsertController
 */
@WebServlet("/ninsert.ad")
public class AdminNoticeInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNoticeInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			//System.out.println("여기까진 되나?");
			
			int maxSize = 10*1024*1024;
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/upfiles/notice_upfiles/");
			
			MultipartRequest mr = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			String writer = mr.getParameter("writer");
			String category = mr.getParameter("category");
			String title = mr.getParameter("title");
			String content = mr.getParameter("content");
			
			Notice n = new Notice();
			n.setNoticeWriter(writer);
			n.setNoticeCategory(category);
			n.setNoticeTitle(title);
			n.setNoticeContent(content);
			
			Attachment at = null;
			
			if(mr.getOriginalFileName("upfile") != null) {
				
				at = new Attachment();
				at.setOriginName(mr.getOriginalFileName("upfile"));
				at.setChangeName(mr.getFilesystemName("upfile"));
				at.setFilePath("resources/upfiles/notice_upfiles/");
			}
			
			int result = new NoticeService().insertNotice(n, at);
			
			if(result > 0) {
				
				request.getSession().setAttribute("alertMsgAd", "공지사항이 정상적으로 등록되었습니다.");
				response.sendRedirect(request.getContextPath() + "/nlist.ad?currentPage=1");
			} else {
				
				if(at != null) {
					new File(savePath + at.getChangeName()).delete();
				}
				//  에러페이지 고민중. 수정하기!
				request.getSession().setAttribute("alertMsgAd", "공지사항 등록에 실패했습니다.");
				response.sendRedirect(request.getContextPath() + "/nlist.ad?currentPage=1");
			}
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
