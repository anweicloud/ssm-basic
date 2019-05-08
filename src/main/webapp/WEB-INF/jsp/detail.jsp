<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="common/head.jsp" %>
<title>图书：${book.name }</title>
</head>
<body>

<div class="container">
<a href="${ctx }/book/list"> &lt; 返回</a>
<table class="table">
	<tr>
		<td>${book.bookId }</td>
		<td>${book.name }</td>
		<td>${book.number }</td>
	</tr>
</table>


<h4>预约记录</h4>
<ul>
	<c:forEach items="${ list }" var="v">
		<li>${v.bookId } - ${ v.studentId } - ${ v.appointTime }</li>
	</c:forEach>
</ul>

</div>

</body>
</html>