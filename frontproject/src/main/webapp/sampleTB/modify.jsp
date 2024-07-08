<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="frontproject.vo.SampleTBVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="msg" value="${param.msg}"></c:set>

<c:if test="${!empty msg}">
	<c:if test="${msg eq 'fail'}">
		<script>
			alert("수정에 실패했습니다.");
		</script>
	</c:if>
</c:if>

<%-- <%
	SampleTBVO svo = (SampleTBVO)request.getAttribute("svo");

	String msg = request.getParameter("msg");
	if(msg != null) {
		if(msg.equals("fail")) {
			%>
			<script>
				alert("수정에 실패했습니다.");
			</script>
			<%
		}
	}
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>sampleTB 수정 페이지</h2>
	<form action="modify.do" method="post">
	<%-- <input type="hidden" name="sno" value="<%=svo.getSno()%>"> --%>
	<input type="hidden" name="sno" value="${svo.sno}">
		<table border="1">
			<tbody>
				<tr>
					<th align="right">글 번호</th>
					<td>${svo.sno}</td>
				</tr>
				<tr>
					<th align="right">제목</th>
					<td><input type="text" name="title" value="${svo.title}"></td>
				</tr>
				<tr>
					<th align="right">작성자</th>
					<td><input type="text" name="writer" value="${svo.writer}"></td>
				</tr>
				<tr>
					<th align="right">작성일</th>
					<td>${svo.rdate}</td>
				</tr>
				<tr>
					<th align="right">본문</th>
					<td><textarea name="body">${svo.body}</textarea></td>
				</tr>
			</tbody>
		</table>
		<button type="submit">저장</button>
	</form>
</body>
</html>