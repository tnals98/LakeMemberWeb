<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>마이페이지</title>
		<link rel="stylesheet"herf="/resources/css/member/main.css">
	</head>
	<body>
			<h1>마이페이지</h1>
			<form action="/member/update.do" method ="post">
			<fieldset>
				<legend>회원상세 정보</legend>
				<ul>
					<li>
						<label for="member-id">아이디</label>
						<input type="text" id="member-id" name="member-id" value="${member.memberId }" readonly> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li>
						<label for="member-pw">비밀번호</label>
						<input type="password" id="member-pw" name="member-pw"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li>
						<label for="member-name">이름</label>
						<input type="text" id="member-name" name="member-name" value="${member.memberName }" readonly> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
						
					</li>
					<li>
						<label for="member-age">나이</label>
						<input type="text" id="member-age" name="member-age" value="${member.memberAge }" readonly> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
						
					</li>
					<li>
						<label for="member-gender">성별</label>
<!-- 						기존 성별 수정 코드의 오류를 막기 위해 적어주는 input 태그, hidden으로 사용자에겐 보이지 않음! -->
<!-- 						기존 데이터 그대로 업데이트 되도록함 -->
						<input type="radio" id="member-gender" name="member-gender" value="${member.memberGender }">
						<c:if test="${member.memberGender eq 'M'}">남자</c:if>
						<c:if test="${member.memberGender eq 'F'}">여자</c:if>
						${member.memberGender }가 M면 남자
						${member.memberGender }가 F면 여자
						
<%-- 						<input type="radio" id="member-gender" name="member-gender" value="M"<c:if test="${member.memberGender eq 'M'}">checked</c:if>>남 <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name --> --%>
<%-- 						<input type="radio" id="member-gender" name="member-gender" value="F"<c:if test="${member.memberGender eq 'F'}">checked</c:if>>여 <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name --> --%>
					</li>
					<li>
						<label for="member-email">이메일</label>
						<input type="text" id="member_email" name="member-email" value="${member.memberEmail }"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li>
						<label for="member-phone">전화번호</label>
						<input type="text" id="member-phone" name="member-phone" value="${member.memberPhone }"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li>
						<label for="member-address">주소</label>
						<input type="text" id="member-address" name="member-address" value="${member.memberAddress }"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li>
						<label for="member-hobby">취미</label>
						<input type="text" id="member-hobby" name="member-hobby" value="${member.memberHobby }"> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
					<li>
						<label for="member-date">가입날짜</label>
						<input type="text" id="member-hobby" value="${member.memberDate }"readonly> <!-- 기능을 위한 id, 쿼리스트링 생성을 위한 name -->
					</li>
				</ul>
			</fieldset>
			<div>
			<button type="submit">수정하기</button>
			<a href="javascript:void(0)" onclick="checkDelete();">탈퇴하기</a>
<!-- 			<button>탈퇴하기</button> -->
			</div>
			</form>
			<script>
			// /member/delete.do?memberId=${sessionScope.memberId }
			function checkDelete(){
				const memberId = '${sessionScope.memberId }';
				if(confirm("탈퇴하시겠습니까?")) {
					location.href = "/member/delete.do?memberId="+memberId;
				}
			}
			</script>
</body>
</html>