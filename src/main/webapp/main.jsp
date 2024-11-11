<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Book market</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="main.jsp">Book market</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                
       	   	      <%
				String userID = null;
				if (session.getAttribute("userID") != null) {
					userID = (String) session.getAttribute("userID");
				}
					%>
					
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
        <header class="bg-dark py-3">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="text-center text-white">
         			<img src="images/main.png" style="width:1200px; height:350px;">
                </div>
            </div>
        </header>
        <%
		ArrayList<Product> listOfBooks = productDAO.getAllProducts();
		%>
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <img class="card-img-top" src="images/1.jpg" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                      	<%
									Product book = listOfBooks.get(0);
										%>
			
                                    <h5 class="fw-bolder"> <%=book.getBookName() %> </h5>
                                    <%=book.getUnitPrice() %>원
                                </div>
                             
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">                    
                                <a class="btn btn-outline-dark mt-auto" href="products.jsp?id=<%=book.getBookID()%>">장바구니</a>     	
                          		</div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">         
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div> 
                            <img class="card-img-top" src="images/2.jpg"/>
                            <div class="card-body p-4">
                                <div class="text-center">
                        		    <%
									 book = listOfBooks.get(1);
									%>
                                    <h5 class="fw-bolder"> <%=book.getBookName() %></h5>
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <span class="text-muted text-decoration-line-through">19,000원</span>
                                    <%=book.getUnitPrice() %>원
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                <a class="btn btn-outline-dark mt-auto" href="products.jsp?id=<%=book.getBookID()%>">장바구니</a> 
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <img class="card-img-top" src="images/3.jpg"/>
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <%
									 book = listOfBooks.get(2);
									%>
                                    <h5 class="fw-bolder"> <%=book.getBookName() %></h5>
                                    <span class="text-muted text-decoration-line-through">17,000원</span>
                                    <%=book.getUnitPrice() %>원
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                <a class="btn btn-outline-dark mt-auto" href="products.jsp?id=<%=book.getBookID()%>">장바구니</a>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <img class="card-img-top" src="images/4.jpg"/>
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <%
									 book = listOfBooks.get(3);
									%>
                                    <h5 class="fw-bolder"><%=book.getBookName() %></h5>
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <%=book.getUnitPrice() %>원
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                <a class="btn btn-outline-dark mt-auto" href="products.jsp?id=<%=book.getBookID()%>">장바구니</a>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <img class="card-img-top" src="images/5.jpg"/>
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <%
									 book = listOfBooks.get(4);
									%>
                                    <h5 class="fw-bolder"><%=book.getBookName() %></h5>
                                    <span class="text-muted text-decoration-line-through">21,500원</span>
                                    <%=book.getUnitPrice() %>원
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                <a class="btn btn-outline-dark mt-auto" href="products.jsp?id=<%=book.getBookID()%>">장바구니</a>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <img class="card-img-top" src="images/6.jpg" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <%
									 book = listOfBooks.get(5);
									%>
                                    <h5 class="fw-bolder"><%=book.getBookName() %></h5>
                                    <%=book.getUnitPrice() %>원
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                <a class="btn btn-outline-dark mt-auto" href="products.jsp?id=<%=book.getBookID()%>">장바구니</a>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <img class="card-img-top" src="images/7.jpg" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <%
									 book = listOfBooks.get(6);
									%>
                                    <h5 class="fw-bolder"><%=book.getBookName() %></h5>
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <span class="text-muted text-decoration-line-through">17,000원</span>
                                    <%=book.getUnitPrice() %>원
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                <a class="btn btn-outline-dark mt-auto" href="products.jsp?id=<%=book.getBookID()%>">장바구니</a>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <img class="card-img-top" src="images/8.jpg" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <%
									 book = listOfBooks.get(7);
									%>
                                    <h5 class="fw-bolder"><%=book.getBookName() %></h5>
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <%=book.getUnitPrice() %>원
                                </div>    
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                <a class="btn btn-outline-dark mt-auto" href="products.jsp?id=<%=book.getBookID()%>">장바구니</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
  
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
