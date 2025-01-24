<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="LIST"></c:set>
<%@ include file="../common/head.jspf"%>


${articles }

<hr />

<table class="table table-xs" border="1" cellspacing="0" cellpadding="5" style="width: 100%; border-collapse: collapse;">
	<thead>
		<tr>
			<th style="text-align: center;">ID</th>
			<th style="text-align: center;">Registration Date</th>
			<th style="text-align: center;">Title</th>
			<th style="text-align: center;">Member ID</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="article" items="${articles }">
			<tr>
				<td>${article.id }</td>
				<td>${article.regDate }</td>
				<td>${article.title }</td>
				<td>${article.body }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<%@ include file="../common/foot.jspf"%>
