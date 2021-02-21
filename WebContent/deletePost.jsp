<%@page import="Board.BoardDTO"%>
<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시글 삭제</title>
</head>
<body>
<%
//세션으로 인덱스 받기
BoardDAO.getInstance().removePost(0);
%>
<script>
alert("삭제되었습니다.");
window.location.href="MainBoard.jsp";
</script>
</body>
</html>