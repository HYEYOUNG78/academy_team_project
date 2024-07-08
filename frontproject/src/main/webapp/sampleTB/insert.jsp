<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg = request.getParameter("msg");
	if(msg != null) {
		if(msg.equals("fail")) {
			%>
			<script>
				alert("게시글 등록에 실패했습니다.");
			</script>
			<%
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insert.do" method="post">
		<table>
			<tbody>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" placeholder="제목을 입력하세요"></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="writer" placeholder="작성자를 입력하세요"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="body" placeholder="내용을 입력하세요"></textarea></td>
				</tr>
			</tbody>
		</table>
		<button>등록</button>
	</form>
</body>
</html>