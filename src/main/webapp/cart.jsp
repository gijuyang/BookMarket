<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<html>
<head>
	   <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Book market</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        
        <script type="text/javascript">
	function BuyBook(){
		alert('구매 완료');
	}
		</script>
<%
	String cartId = session.getId();
%>
<title>장바구니</title>
</head>
<body>
			<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
			%>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="main.jsp">Book market</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="main.jsp">홈</a></li>
                        
                         <%
					if (userID == null) {
						%>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">회원가입/로그인</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="join.jsp">회원가입</a></li>
                                <li><a class="dropdown-item" href="login.jsp">로그인</a></li>   
                            <%
					   } else {
							%>
                           <li class="nav-item"><a class="nav-link active" aria-current="page" href="logout_action.jsp">로그아웃</a></li>
                            </ul>
                            <%
							}
							%>
                        </li>
                    </ul>
                    </div>
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit" >
                            <i class="bi-cart-fill me-1"></i>
                            <a href="cart.jsp">장바구니 </a>
                        </button>
                    </form>
                
            </div>
        </nav>
	<div class="jumbotron" style="padding-top: 50px; padding-bottom: 50px">
		<div class="container">
			<h2>장바구니</h2>
		</div>
	</div>
	<div class="container">
		<div class="row" style="background-color: #f7f7f7; border-radius: 20px; height: 75px;">
			<table width="100%" style="margin: 10px;">
				<tr>
					<td style="padding-left: 10px;"><input type="checkbox" id="allChk" checked>&nbsp;<b>전체</b></td>
					<td></td>
					<td align="right" style="padding-right: 35px;">
					<a href="deleteCart.jsp?cartId=<%=cartId%>" 
					class="btn btn-danger">삭제하기</a>
					<a href="deleteCart.jsp?cartId=<%=cartId%>"
					class="btn btn-success" onclick="BuyBook()">주문하기	</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th></th>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%				
					int sum = 0;
					ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartlist");
					if (cartList == null)    
						cartList = new ArrayList<Product>();

					for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
						Product book = cartList.get(i);
						int total = book.getUnitPrice() * book.getQuantity();
						sum = sum + total;
				%>
				<tr>
					<td><input type="checkbox" class="chk" checked></td>
					<td><%=book.getBookID() %> - <%=book.getBookName() %></td>
					<td><%=book.getUnitPrice()%></td>
					<td><%=book.getQuantity()%></td>
					<td><%=total%></td>
					<td>
					<a href="removeCart.jsp?id=<%=book.getBookID()%>"
					 class="bi bi-backspace-fill">&nbsp;삭제</a></td>
				</tr>
				<%
					}
				%>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%=sum%></th>
					<th></th>
					<th></th>
				</tr>
			</table>
		</div>
		<hr>
	</div>
 
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

</body>
</html>