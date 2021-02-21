<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
request.setCharacterEncoding("utf-8");
String writer=request.getParameter("writer");
String title=request.getParameter("title");
String email=request.getParameter("email");
String postData=request.getParameter("postData");
BoardDAO.getInstance().editPost(0,writer,title,email,postData);
<script>
window.location.href="MainBoard.jsp";
</script>
</body>
</html>