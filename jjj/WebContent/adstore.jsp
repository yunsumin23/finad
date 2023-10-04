<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.project.DTO.AdstoreDTO"%>
<%@ page import="com.project.jjj.*"%>

<!DOCTYPE html>
<html lang="ko">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ADstore</title>
<link rel="stylesheet" href="css/adstore.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="js/adstore.js" type="text/javascript"></script>

</head>
<body>
<%
    String id = (String) session.getAttribute("id");
    String password = (String) session.getAttribute("password");
    String type = (String) session.getAttribute("type");
    if (id == null && password == null) {
%>
<jsp:include page="header_login.jsp"></jsp:include>
<%
    } else {
        %>
<jsp:include page="header_logout.jsp"></jsp:include>
        <%
    }
%>

	<%

	
	   Adstore adstorelist = new Adstore();
	   ArrayList<AdstoreDTO> jjj = adstorelist.getAdstoreList();
	%>
	<section class="section">
		<div id="banner"></div>
		<h1 class="h1">가장 최근 광고한 10개 상품!</h1>
		<div id="product-list">
			<a href="sellpage.jsp" target="_blank">
				<div class="product-card">
					<div>
							<% 
							out.println("<img class='product-img' src='img/" + jjj.get(0).getItemImage() + "' + alt=''>");
							%>
					</div>
					<div class="product-contents">
						<%
							out.println("<span class='product-name'>" + jjj.get(0).getItemName() + "</span><span class='product-price'>"
									+ jjj.get(0).getItemPrice() + "원</span>");
						%>
						<div>
							<div class="product-seller">
								<img class="product-avatar" src="img/nike.png" />
								<%
									out.println("<span>" + jjj.get(0).getItemSeller() + "</span>");
								%>
							</div>
						</div>
					</div>
				</div>
			</a> <a href="sellpage.jsp">
				<div class="product-card">
					<div>
						<% 
							out.println("<img class='product-img' src='img/" + jjj.get(1).getItemImage() + "' + alt=''>");
							%>
					</div>
					<div class="product-contents">
						<%
							out.println("<span class='product-name'>" + jjj.get(1).getItemName() + "</span><span class='product-price'>"
									+ jjj.get(1).getItemPrice() + "원</span>");
						%>
						<div>
							<div class="product-seller">
								<img class="product-avatar" src="img/oking.png" />
								<%
									out.println("<span>" + jjj.get(1).getItemSeller() + "</span>");
								%>
							</div>
						</div>
					</div>
				</div>
			</a> <a href="">
				<div class="product-card">
					<div>
							<% 
							out.println("<img class='product-img' src='img/" + jjj.get(2).getItemImage() + "' + alt=''>");
							%>
					</div>
					<div class="product-contents">
						<%
							out.println("<span class='product-name'>" + jjj.get(2).getItemName() + "</span><span class='product-price'>"
									+ jjj.get(2).getItemPrice() + "원</span>");
						%>
						<div>
							<div class="product-seller">
								<img class="product-avatar" src="img/boy.png" />
								<%
									out.println("<span>" + jjj.get(2).getItemSeller() + "</span>");
								%>
							</div>
						</div>
					</div>
				</div>
			</a> <a href="">
				<div class="product-card">
					<div>
							<% 
							out.println("<img class='product-img' src='img/" + jjj.get(3).getItemImage() + "' + alt=''>");
							%>
					</div>
					<div class="product-contents">
					<%
							out.println("<span class='product-name'>" + jjj.get(3).getItemName() + "</span><span class='product-price'>"
									+ jjj.get(3).getItemPrice() + "원</span>");
						%>					
						<div>
							<div class="product-seller">
								<img class="product-avatar" src="img/samsung.png" />
								<%
									out.println("<span>" + jjj.get(3).getItemSeller() + "</span>");
								%>
							</div>
						</div>
					</div>
				</div>
			</a> <a href="">
				<div class="product-card">
					<div>
							<% 
							out.println("<img class='product-img' src='img/" + jjj.get(4).getItemImage() + "' + alt=''>");
							%>
					</div>
					<div class="product-contents">
					<%
							out.println("<span class='product-name'>" + jjj.get(4).getItemName() + "</span><span class='product-price'>"
									+ jjj.get(4).getItemPrice() + "원</span>");
						%>
						<div>
							<div class="product-seller">
								<img class="product-avatar" src="img/girl.png" />
								<% 
								out.println("<span>"+ jjj.get(4).getItemSeller() +"</span>");
								%>
							</div>
						</div>
					</div>
				</div>
			</a> <a href="">
				<div class="product-card">
					<div>
						<% 
							out.println("<img class='product-img' src='img/" + jjj.get(5).getItemImage() + "' + alt=''>");
							%>
					</div>
					<div class="product-contents">
							<%
							out.println("<span class='product-name'>" + jjj.get(5).getItemName() + "</span><span class='product-price'>"
									+ jjj.get(5).getItemPrice() + "원</span>");
						%>
						<div>
							<div class="product-seller">
								<img class="product-avatar" src="img/oking.png" />
								<% 
								out.println("<span>"+ jjj.get(5).getItemSeller() +"</span>");
								%>
							</div>
						</div>
					</div>
				</div>
			</a> <a href="">
				<div class="product-card">
					<div>
							<% 
							out.println("<img class='product-img' src='img/" + jjj.get(6).getItemImage() + "' + alt=''>");
							%>
					</div>
					<div class="product-contents">
					<%
							out.println("<span class='product-name'>" + jjj.get(6).getItemName() + "</span><span class='product-price'>"
									+ jjj.get(5).getItemPrice() + "원</span>");
						%>
						<div>
							<div class="product-seller">
								<img class="product-avatar" src="img/boy.png" />
								<% 
								out.println("<span>"+ jjj.get(6).getItemSeller() +"</span>");
								%>
							</div>
						</div>
					</div>
				</div>
			</a> <a href="">
				<div class="product-card">
					<div>
						<% 
							out.println("<img class='product-img' src='img/" + jjj.get(7).getItemImage() + "' + alt=''>");
							%>
					</div>
					<div class="product-contents">
						<%
							out.println("<span class='product-name'>" + jjj.get(7).getItemName() + "</span><span class='product-price'>"
									+ jjj.get(7).getItemPrice() + "원</span>");
						%>
						<div>
							<div class="product-seller">
								<img class="product-avatar" src="img/gongdae.png" />
								<% 
								out.println("<span>"+ jjj.get(7).getItemSeller() +"</span>");
								%>
							</div>
						</div>
					</div>
				</div>
			</a> <a href="">
				<div class="product-card">
					<div>
							<% 
							out.println("<img class='product-img' src='img/" + jjj.get(8).getItemImage() + "' + alt=''>");
							%>
					</div>
					<div class="product-contents">
						<%
							out.println("<span class='product-name'>" + jjj.get(8).getItemName() + "</span><span class='product-price'>"
									+ jjj.get(8).getItemPrice() + "원</span>");
						%>
						<div>
							<div class="product-seller">
								<img class="product-avatar" src="img/nike.png" />
								<% 
								out.println("<span>"+ jjj.get(8).getItemSeller() +"</span>");
								%>	
							</div>
						</div>
					</div>
				</div>
			</a> <a href="">
				<div class="product-card">
					<div>
							<% 
							out.println("<img class='product-img' src='img/" + jjj.get(9).getItemImage() + "' + alt=''>");
							%>
					</div>
					<div class="product-contents">
						<%
							out.println("<span class='product-name'>" + jjj.get(9).getItemName() + "</span><span class='product-price'>"
									+ jjj.get(9).getItemPrice() + "원</span>");
						%>
						<div>
							<div class="product-seller">
								<img class="product-avatar" src="img/oking.png" />
								<% 
								out.println("<span>"+ jjj.get(9).getItemSeller() +"</span>");
								%>
							</div>
						</div>
					</div>
				</div>
			</a>
	</section>
	<form action="">
		<div class="product_div">
			<input type="search" class="product_search"
				placeholder="원하시는 상품을 검색해주세요" maxlength="20">
		</div>
	</form>
	<div class="mm">
		<div class="right_div">
			전자기기 총 집합!
			<div class="right_div_div">
				<ul>
					<li><a href=""><img src="img/zflip.png" alt=""></a></li>
					<li><a href=""><img src="img/lg_go.png" alt=""></a></li>
					<li><a href=""><img src="img/macbook.png" alt=""></a></li>
				</ul>
			</div>
		</div>
		<div class="left_div">
			브랜드존
			<div class="m_div">
				<div class="left_div_div01">
					<a href=""><img src="img/coat.png" alt="옷"
						onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)">
					</a>
				</div>
				<div class="left_div_div02">
					<ul>
						<li><a href=""><img src="img/nike_air.png" alt=""
								onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"></a></li>
						<li><a href=""><img src="img/nike_graey.png" alt=""
								onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"></a></li>
						<li><a href=""><img src="img/nike_super.png" alt=""
								onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="cart_div">
		<a href="cart.jsp"><img src="img/cart.png" alt=""></a>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>
