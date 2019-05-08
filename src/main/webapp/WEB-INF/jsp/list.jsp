<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="common/head.jsp" %>
<title>图书列表</title>
</head>
<body>

<div class="container">
<caption>${basePath }, ${ctx }</caption>
<table class="table">
	<c:forEach items="${list }" var="v">
	<tr>
		<td>${v.bookId }</td>
		<td><a href="${ctx }/book/${v.bookId }/detail">${v.name }</a></td>
		<td>${v.number }</td>
		<td><button class="btn btn-info" onclick="point(${v.bookId })">预约</button></td>
	</tr>
	</c:forEach>
</table>
</div>
<script type="text/javascript">
	var ctx = '${ctx}';
	function point(bookId) {
		$.post(ctx+"/book/"+bookId+"/appoint", { studentId: 1 }, function(d){
			if (d.success) {
				alert(d.data.stateInfo);
			}
		});
	}
</script>
</body>
</html>