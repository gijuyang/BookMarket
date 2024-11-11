<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
<div class="form signup">
  <div class="form-header">
    <div class="show-signin">로그인</div>
  </div>
  <form method="post" action="login_action.jsp">	
  <div class="arrow"></div>
  <div class="form-elements">
    <div class="form-element">
      <input type="text" name="userID" placeholder="아이디">
    </div>
    <div class="form-element">
      <input type="password" name="userPass" placeholder="비밀번호">
    </div>

    <div class="form-element">
      <button id="submit-btn">로그인</button>
      </form>
    </div>
  </div>
</div>
</body>
</html>