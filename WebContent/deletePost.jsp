<%@page import="Board.BoardDTO"%>
<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խñ� ����</title>
</head>
<body>
<%
//�������� �ε��� �ޱ�
BoardDAO.getInstance().removePost(0);
%>
<script>
alert("�����Ǿ����ϴ�.");
window.location.href="MainBoard.jsp";
</script>
</body>
</html>