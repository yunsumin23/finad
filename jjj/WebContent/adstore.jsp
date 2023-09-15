<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADstore</title>
    <link rel="stylesheet" href="css/adstore.css" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="js/adstore.js" type="text/javascript"></script>
  </head>
<jsp:include page="header_login.jsp"></jsp:include>
    <section class="section">
      <div id="banner"></div>
      <h1 class="h1">가장 최근 광고한 10개 상품!</h1>
      <div id="product-list">
        <a href="sellpage.html" target="_blank">
          <div class="product-card">
            <div><img class="product-img" src="img/niket1.png" alt="" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"></div>
            <div class="product-contents">
              <span class="product-name">나이키 스포츠 퓨추라 반팔티</span><span class="product-price">27,000원</span>
              <div>
                <div class="product-seller">
                  <img class="product-avatar" src="img/nike.png" /><span>나이키</span>
                </div>
              </div>
            </div>
          </div>
        </a>
        <a href="">
          <div class="product-card">
            <div><img class="product-img" src="img/bag.png" alt="" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"></div>
            <div class="product-contents">
              <span class="product-name">오킹 가방</span><span class="product-price">88,980원</span>
              <div>
                <div class="product-seller">
                  <img class="product-avatar" src="img/oking.png" /><span>OKING</span>
                </div>
              </div>
            </div>
          </div>
        </a>
        <a href="">
          <div class="product-card">
            <div><img class="product-img" src="img/belt.png" alt="" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"></div>
            <div class="product-contents">
              <span class="product-name">윤수민 벨트</span><span class="product-price">5,500원</span>
              <div>
                <div class="product-seller">
                  <img class="product-avatar" src="img/boy.png" /><span>윤수민</span>
                </div>
              </div>
            </div>
          </div>
        </a>
        <a href="">
          <div class="product-card">
            <div><img class="product-img" src="img/buds.png" alt="" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"></div>
            <div class="product-contents">
              <span class="product-name">삼성 버즈</span><span class="product-price">135,900원</span>
              <div>
                <div class="product-seller">
                  <img class="product-avatar" src="img/samsung.png" /><span>SAMSUNG</span>
                </div>
              </div>
            </div>
          </div>
        </a>
        <a href="">
          <div class="product-card">
            <div><img class="product-img" src="img/cap.png" alt="" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"></div>
            <div class="product-contents">
              <span class="product-name">이준표 캡 모자</span><span class="product-price">9,350원</span>
              <div>
                <div class="product-seller">
                  <img class="product-avatar" src="img/girl.png" /><span>junpro</span>
                </div>
              </div>
            </div>
          </div>
        </a>
        <a href="">
          <div class="product-card">
            <div><img class="product-img" src="img/couple.png" alt="" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"></div>
            <div class="product-contents">
              <span class="product-name">가을 핫템 커플룩</span><span class="product-price">180,500원</span>
              <div>
                <div class="product-seller">
                  <img class="product-avatar" src="img/oking.png" /><span>OKING</span>
                </div>
              </div>
            </div>
          </div>
        </a>
        <a href="">
          <div class="product-card">
            <div><img class="product-img" src="img/dickies.png" alt="" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"></div>
            <div class="product-contents">
              <span class="product-name">디키즈 후드티</span><span class="product-price">60,800원</span>
              <div>
                <div class="product-seller">
                  <img class="product-avatar" src="img/boy.png" /><span>보이샵</span>
                </div>
              </div>
            </div>
          </div>
        </a>
        <a href="">
          <div class="product-card">
            <div><img class="product-img" src="img/graycap.png" alt="" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"></div>
            <div class="product-contents">
              <span class="product-name">남성 그레이 캡</span><span class="product-price">19,300원</span>
              <div>
                <div class="product-seller">
                  <img class="product-avatar" src="img/gongdae.png" /><span>공대생</span>
                </div>
              </div>
            </div>
          </div>
        </a>
        <a href="">
          <div class="product-card">
            <div><img class="product-img" src="img/hood.png" alt="" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"></div>
            <div class="product-contents">
              <span class="product-name">나이키 후드티</span><span class="product-price">80,400원</span>
              <div>
                <div class="product-seller">
                  <img class="product-avatar" src="img/nike.png" /><span>나이키</span>
                </div>
              </div>
            </div>
          </div>
        </a>
        <a href="">
          <div class="product-card">
            <div><img class="product-img" src="img/jacket.png" alt="" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"></div>
            <div class="product-contents">
              <span class="product-name">오킹 바시티 자켓</span><span class="product-price">89,350원</span>
              <div>
                <div class="product-seller">
                  <img class="product-avatar" src="img/oking.png" /><span>OKING</span>
                </div>
              </div>
            </div>
          </div>
        </a>
    </section>
    <form action="">
      <div class="product_div">
        <input type="search" class="product_search" placeholder="원하시는 상품을 검색해주세요" maxlength="20">
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
      <div class="left_div">브랜드존
        <div class="m_div">
          <div class="left_div_div01">
            <a href=""><img src="img/coat.png" alt="옷" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)">
            </a>
          </div>
          <div class="left_div_div02">
            <ul>
              <li><a href=""><img src="img/nike_air.png" alt="" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"></a></li>
              <li><a href=""><img src="img/nike_graey.png" alt="" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"></a></li>
              <li><a href=""><img src="img/nike_super.png" alt="" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="cart_div">
      <a href="cart.html"><img src="img/cart.png" alt=""></a>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
  </body>

</html> 