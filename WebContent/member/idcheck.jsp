<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
<link href="CSS/subpage.css" rel="sytlesheet">
<style type="text/css">
body {
	background-color: #B96DB5;
	font-family: Verdana;
}

#wrap {
	margin: 0 20px;
}

h1 {
	font-family: "Times New Roman", Times, serif;
	font-size: 45px;
	color: white;
	font-weight: normal;
}

input[type=button], input[type=submit] {
	float: right;
}
</style>
<script type="text/javascript">
	function idok() { //회원가입폼에 입력했던 값을 중복확인한 id값/reid 값으로 적용..
		opener.form.id.value = "${id}";
		opener.form.reid.value = "${id}";
		self.close();
	}
</script>
</head>
<body>
	<div id="wrap">
		<h1>ID 중복확인</h1>
		<form method=post name=form style="margin-right: 0"
			action="NonageServlet?command=id_check_form">
			User ID <input type=text name=id value="" size=15> 
					<input type=submit value="검색" class=submit><br>
			<div style="margin-top: 20px">
				<c:if test="${message == 1}">
					<script type="text/javascript">
						opener.document.form.id.value = ""; //중복이면 id에 회원가입폼에 입력햇던 내용 지움.
					</script>
			${id}는 이미 사용중인 아이디입니다.
			</c:if>
				<c:if test="${message== -1}">
			${id}는 사용 가능한 아이디입니다.
			<input type="button" value="사용" class="cancle" onclick="idok()">
				</c:if>
			</div>
		</form>
	</div>
</body>
</html>