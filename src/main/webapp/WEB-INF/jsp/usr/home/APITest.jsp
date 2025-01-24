<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="APITest"></c:set>

<script>
	const API_KEY = '일반 인증키';

	async function getCData() {
		const url = 'https://apis.data.go.kr/B554035/tmr-forecast/get_tmr-forecast?serviceKey='
				+ API_KEY;
		const response = await
		fetch(url);
		const data = await
		response.json();
		console.log("data", data);
	}

	getCData();
</script>


<%@ include file="../common/head.jspf"%>



<%@ include file="../common/foot.jspf"%>