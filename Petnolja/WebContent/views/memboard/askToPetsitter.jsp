<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% int sno = (Integer)request.getAttribute("sno"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펫시터</title>
<style>
        #outer{
          width:1000px;
          margin:auto;
          position:relative;
          font-family:'Noto Sans KR', sans-serif !important;
          border:1px solid lightgray;
          padding: 15px;
        }
        .table th{
            background-color: rgb(230, 230, 230);
            text-align: center; 
        }
    
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
<br><br>
 <div id="outer">
    <br>

        <h2>1:1 문의</h2>    
    <form action="<%=contextPath%>/askToWriter2.me" method="post">       
        <table class="table" style="border:1px solid lightgray">

            <tr>
                <th>제목</th>
                <input type="hidden" name="sno" value=<%=sno%>>
                <td><input type="text" name="title" style="width:100%;height:100%; border:1px solid:lightgrey;" required></td>
            </tr>
        </table>
        <label for="comment"><h4>본문 내용</h4></label>
          <div class="form-group" style="text-align: center;">
            
          <textarea class="form-control" rows="5" id="comment" name="content" style="resize:none; height: 400px" required></textarea>
          <br>         
		  <br>
          <button type="submit" class="btn btn-primary">문의하기</button>&nbsp;
          <button type="button" class="btn btn-secondary" onclick="location.href='<%=contextPath%>/askPet.me?sno=<%=sno%>&currentPage=1'">목록보기</button>
        </div>
        </form>
 </div>


 <br><br>
 <%@ include file = "../common/footer.jsp"%>
</body>
</html>