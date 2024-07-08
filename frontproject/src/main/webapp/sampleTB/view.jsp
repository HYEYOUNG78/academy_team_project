<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="frontproject.vo.SampleTBVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%
	SampleTBVO svo = (SampleTBVO)request.getAttribute("svo");
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>sampleTB 상세 페이지</h2>
	<table border="1">
		<tbody>
			<tr>
				<th align="right">글 번호</th>
				<td>${svo.sno}</td>
				<%-- <td><%= svo.getSno() %></td> --%>
			</tr>
			<tr>
				<th align="right">제목</th>
				<td>${svo.title}</td>
				<%-- <td><%= svo.getTitle() %></td> --%>
			</tr>
			<tr>
				<th align="right">작성자</th>
				<td>${svo.writer}</td>
				<%-- <td><%= svo.getWriter() %></td> --%>
			</tr>
			<tr>
				<th align="right">작성일</th>
				<td>${svo.rdate}</td>
				<%-- <td><%= svo.getRdate() %></td> --%>
			</tr>
			<tr>
				<th align="right">본문</th>
				<td>${svo.body}</td>
				<%-- <td><%= svo.getBody() %></td> --%>
			</tr>	
		</tbody>
	</table>
	<button onclick="location.href='modify.do?sno=${svo.sno}'">수정</button>
	<%-- <button onclick="location.href='modify.do?sno=<%= svo.getSno() %>'">수정</button> --%>
</body>
</html>