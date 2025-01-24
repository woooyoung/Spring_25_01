<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax</title>
<style type="text/css">
.rs {
	border: 5px solid black;
	margin-top: 10px;
	font-size: 3rem;
	padding: 20px;
}

.rs-msg {
	border: 5px solid green;
	margin-top: 10px;
	font-size: 3rem;
	padding: 20px;
}

.rs-code {
	border: 5px solid pink;
	margin-top: 10px;
	font-size: 3rem;
	padding: 20px;
}
</style>
<!-- 제이쿼리 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	function callByAjax() {
		let form = document.form1;

		let num1 = form.num1.value;
		let num2 = form.num2.value;
		//let action = './doPlus';
		let action = form.action;

		$.get(action, {
			num1 : num1,
			num2 : num2
		}, function(data) {
			//alert(data);

			//$('.rs').empty().append(data);
			$('.rs').text(data);
		}, 'html');
	}

	function callByAjax2() {
		let form = document.form1;

		let num1 = form.num1.value;
		let num2 = form.num2.value;
		//let action = './doPlus';
		let action = form.action;

		$.get(action, {
			num1 : num1,
			num2 : num2
		}, function(data) {
			data = data.split('/');

			let rs = data[0];
			let msg = data[1];

			$('.rs').text(rs);
			$('.rs-msg').text(msg);
		}, 'html');
	}

	function callByAjax3() {
		let form = document.form1;

		let num1 = form.num1.value;
		let num2 = form.num2.value;
		let action = form.action;

		$.get(action, {
			num1 : num1,
			num2 : num2
		}, function(data) {
			data = data.split('/');

			let rs = data[0];
			let msg = data[1];
			let code = data[2];

			$('.rs').text(rs);
			$('.rs-msg').text(msg);
			$('.rs-code').text(code);
			$('.rs').css('border-color', 'red');
		}, 'html');
	}

	function callByAjax4() {
		let form = document.form1;

		let num1 = form.num1.value;
		let num2 = form.num2.value;

		$.get('./doPlusJson', {
			num1 : num1,
			num2 : num2
		}, function(data) {
			
			let rs = data.rs;

			$('.rs').text(rs);
			$('.rs-msg').text(data.msg);
			$('.rs-code').text(data.code);
		}, 'json');
	}
</script>
</head>
<body>

	<h1>AjaxTestPage</h1>

	<form name="form1" method="POST" action="./doPlus">
		<input type="text" name="num1" placeholder="정수 1" />
		<input type="text" name="num2" placeholder="정수 2" />
		<input type="submit" value="더하기 1" />
		<input onClick="callByAjax();" type="submit" value="더하기 2" />
		<input onClick="callByAjax2();" type="button" value="더하기 3" />
		<input onClick="callByAjax3();" type="button" value="더하기 4" />
		<input onClick="callByAjax4();" type="button" value="더하기 5" />
	</form>

	<h2>더하기 결과</h2>
	<div class="rs"></div>
	<h2>더하기 결과 메세지</h2>
	<div class="rs-msg"></div>
	<h2>더하기 결과 코드</h2>
	<div class="rs-code"></div>

</body>
</html>