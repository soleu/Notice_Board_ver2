<%@page import="Board.BoardDTO"%>
<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포스트</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Noto+Serif+KR:wght@300&display=swap');
body{
font-family: 'Black Han Sans', sans-serif;
font-family: 'Noto Serif KR', serif;
}
p{
width:250px;
height:330px;
border:1px solid green;
}
</style>
</head>
<body>
	<h2>포스트 개별 페이지 입니다.</h2>
	<%
		String index = request.getParameter("name");
		out.println("index : " + index);

		BoardDAO dao = BoardDAO.getInstance();
		BoardDTO Apost = dao.getPost(0);//일단 제일 앞거 가져옴

	%>
	<Table border="1">
		<th colspan="4" style="text-align: center">
		<%=Apost.getTitle() %>
		</th>
		<tr>
			<td>작성자</td>
			<td>
				<%=
					Apost.getWriter()
				%>
			</td>
			<td>작성일시</td>
			<td>
				<%=
					Apost.getDate()
				%>
			</td>
		</tr>
		<tr>
			
			<td>조회수</td>
			<td>
				<%=
					Apost.getCount()
				%>
			</td>
<td><button onclick="window.location.href='checkPw.jsp'">수정하기</button></td>
<td><button onclick="window.location.href='MainBoard.jsp'">뒤로가기</button></td>
		</tr>

		<tr>
			<td>작성내용</td>
			<td colspan="3">
			<p>
				<%= Apost.getPostData()%>
			</p>
			</td>
		</tr>
	</Table>
</body>
</html>