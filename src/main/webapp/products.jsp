<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<html>
<head>
<title>상품상세페이지</title>
</head>
<body>
	  <script type="text/javascript">
	function addToCart(){
		if (confirm('상품을 장바구니에 추가하시겠습니까?')) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
    </script>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		Product product = productDAO.getProductById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=product.getBookName() %></h3>
				<p><b>상품코드: </b><span class="badge badge-danger">
				<%=product.getBookID() %></span>
				<h4><%=product.getUnitPrice() %>원</h4>
				<p><form name="addForm" action="addCart.jsp?id=<%=product.getBookID() %>" method="post">
					<a class="btn btn-secondary" onclick="addToCart()">장바구니</a>
					<a href="main.jsp" class="btn btn-secondary">상품목록</a>
				</form>
			</div>
		</div>
		<hr>
	</div>
</body>
</html>