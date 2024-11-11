<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
<div class="form signup">
  <div class="form-header">
    <div class="show-signup">회원가입</div>
  </div>
  <form method="post" action="join_action.jsp">	
  <div class="arrow"></div>
  <div class="form-elements">
    <div class="form-element">
      <input type="text" name="userID" placeholder="아이디">
    </div>
    <div class="form-element">
      <input type="password" name="userPass" placeholder="비밀번호">
    </div>
    <div class="form-element">
      <input type="password" name="userPass2" placeholder="비밀번호 확인">
    </div>
    <div class="form-element">
      <button id="submit-btn">회원가입</button>
      </form>
    </div>
  </div>
</div>
</body>
</html>