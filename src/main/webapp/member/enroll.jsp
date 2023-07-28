<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<link rel="stylesheet"herf="/resources/css/member/main.css">
	</head>
	<body>
		<h1>회원가입</h1>
		<h3>회원정보를 입력하세요</h3>
		<form action="/member/register.do" method="post">
			<fieldset>
				<legend>회원가입</legend>
				<ul>
					<li>
						<label for="member-id">아이디</label>
						<input type="text" id="member-id" name="member-id"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li>
						<label for="member-pw">비밀번호</label>
						<input type="password" id="member-pw" name="member-pw"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li>
						<label for="member-name">이름</label>
						<input type="text" id="member-name" name="member-name"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li>
						<label for="member-age">나이</label>
						<input type="text" id="member-age" name="member-age"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li>
						<label for="member-gender">성별</label>
						<input type="radio" id="member-gender" name="member-gender" value="M">남 <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
						<input type="radio" id="member-gender" name="member-gender" value="F">여 <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li>
						<label for="member-email">이메일</label>
						<input type="text" id="member_email" name="member-email"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li>
						<label for="member-address">주소</label>
						<input type="text" id="member-address" name="member-address"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li>
						<label for="member-phone">전화번호</label>
						<input type="text" id="member-phone" name="member-phone"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li>
						<label for="member-hobby">취미</label>
						<input type="text" id="member-hobby" name="member-hobby"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
				</ul>
			</fieldset>
			<div>
				<input type="submit" value="가입하기">
				<input type="reset" value="초기화">
			</div>
		</form>
	</body>
</html>