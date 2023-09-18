<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>sellpage</title>
        <link rel="stylesheet" href="css/sellpage.css" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script src="js/sellpage.js" type="text/javascript"></script>
    </head>

    <body>
<jsp:include page="header_login.jsp"></jsp:include>
  
        <section class="section">
            <div class="info">
                <div class="nike_slide">
                    <ul>
                        <li><a href=""><img src="img/niket1.png" alt=""></a></li>
                        <li><a href=""><img src="img/niket2.png" alt=""></a></li>
                        <li><a href=""><img src="img/niket3.png" alt=""></a></li>
                    </ul>
                </div>
                <div class="summary">
                    <nav>
                        <h1 class="nikekr"><a href="https://www.nike.com/kr" id="nikr"> 나이키 코리아 </a></h1>
                        <h5 class="rating star4">
                            <a href="#ree">상품평 보기</a>
                        </h5>
                        <h5> 상품번호 : <span>4512154</span>
                        </h5>
                    </nav>
                    <nav>
                        <h3>나이키 스포츠웨어 아이콘 퓨추라 반팔티 티셔츠</h3>
                        <div class="chs">
                            <div class="yyy">
                                <h4>사이즈</h4>
                                <select class="choose"> 
                                    <option value="">X</option>
                                    <option value="">S</option>
                                    <option value="">M</option>
                                    <option value="">L</option>
                                    <option value="">XL</option>
                                    <option value="">2XL</option>
                                    </select>
                            </div>
                            <div class="yyy">
                                <h4>색상</h4>
                                <select class="choose"> 
                                    <option value="">블랙</option>
                                    <option value="">화이트</option>
                                    <option value="">그레이</option>
                                    <option value="">네이비</option>
                                </select>
                            </div>
                        </div>
                      
                    </nav>
                    <nav>
                        <div class="org_price">
                            <del>가격 30,000</del>
                            <span>10%</span>
                        </div>
                     
                    </nav>
                    <nav>
                        <span class="delivery">무료배송</span>
                        <span class="arrival">내일 (토) 9/10 도착 보장</span>
                    </nav>
                    <nav>
                        <span class="origin">원산지-상세설명 참조</span>
                    </nav>
                    <div class="count">
                        <button class="decrease">-</button>
                        <input type="text" name="num" size="2" maxlength="4" value="1" readonly>
                        <span><i class="fas fa-arrow-alt-circle-up up"></i></span>
                        <span><i class="fas fa-arrow-alt-circle-down down"></i></span>
                        <button class="increase">+</button>
                    </div> 
                    
                    <div class="total">
                        <span>27,000</span>
                        총 상품금액
                    </div>
                    <div class="button">
                        <input type="button" class="cart" value="장바구니" onclick="location.href='cart.html'">
                        <input type="button" class="order" value="바로결제" onclick="location.href='pay.html'">
                    </div>
                </div>
            </div>
            <article class="detail">
                
                <div>
                <img class="nike_2" src="img/nike2.png" alt="상세페이지1">
                <img class="nike_3" src="img/nike3.png" alt="상세페이지2">
                <img class="nike_4" src="img/nike4.png" alt="상세페이지3">
                <!-- <img class="nike_4" src="img/nike4.jpg" alt="상세페이지3">   -->
            </div>
            </article>
            <article class="notice">
                <p class="notice_last"> 소비자가 전자상거래등에서 소비자 보호에 관한 법률 제 17조 제1항 또는 제3항에 따라 청약철회를 하고 동법 제 18조 제1항 에 따라
                    청약철회한 물품을 판매자에게 반환하였음에도 불구 하고 결제 대금의 환급이 3영업일을 넘게 지연된 경우, 소비자 는 전자상거래등에서 소비자보호에 관한 법률 제18조 제2항 및 동법
                    시행령 제21조 2에 따라 지연일수에 대하여 전상법 시행령으로 정하는 이율을 곱하여 산정한 지연이자(“지연배상금”)를 신청할 수 있습니다. 아울러, 교환∙반품∙보증 및 결제대금의
                    환급신청은 [나의쇼핑정보]에서 하실 수 있으며, 자세한 문의는 개별 판매자에게 연락하여 주시기 바랍니다. </p>
            </article>
            <article class="review">
                <nav>
                    <h1 class="re_re" id="ree">상품평</h1>
                </nav>
                <ul>
                    <li class="re_per">
                     
                            <h5 class="ratingstar4">나이키 남여공용 스포츠웨어 블랙,L</h5>
                            <span class="re_id">kys****** 2023-09-01</span>
                        </div>
                        <h3>가볍고 시원하고</h3>
                        <p class="re_text">
                            실내에서 운동하거나 야간에 야외에서 착용시에는 문제없고, 그렇다고 심하게 비치는 정도는 아닙니다만 체형이 드러나니 자신없는 저같은 분들은 한 사이즈 업! 가볍게 입기는 좋습니다. </p>
                    </li>
                    <li class="re_per">
                        <div>
                            <h5 class="ratingstar4">나이키 남여공용 스포츠웨어 네이비,XL</h5>
                            <span class="re_id">yuns****** 2023-09-01</span>
                        </div>
                        <h3>나름 괜찮음...</h3>
                        <p class="re_text"> 다른 리뷰들 처럼 옷이 되게 얇아서 몸이 비치기 때문에 밖에 입고 다니기는 좀 민망할 수 있을 것 같고 운동용으로 입기에 좋은 옷 같습니다,</p>
                    </li>
                    <li class="re_per">
                        <div>
                            <h5 class="ratingstar4">나이키 남여공용 스포츠웨어 블랙,L</h5>
                            <span class="re_id">seo****** 2023-09-01</span>
                        </div>
                        <h3>나이키 왜이래</h3>
                        <p class="re_text"> 나이키 티셔츠는 뒤로 갈수록 퇴보하는듯 전체적으로 신축성 통기성 모두 좋지않아 일상, 운동용 모두 부적절 장점이 없음 </p>
                    </li>
                    <li class="re_per">
                        <div>
                            <h5 class="ratingstar4">나이키 남여공용 스포츠웨어 화이트,S</h5>
                            <span class="re_id">jun****** 2023-08-30</span>
                        </div>
                        <h3>사이즈 참고하세요.</h3>
                        <p class="re_text"> 1업 더 하세요.
                            보통 나이키 티셔츠 XL입고 이 제품도 XL로 구입했는데, 생각보다 신축성이 뛰어나지 않아서 운동할 때 조금 불편합니다. 특히 어깨부분이 불편하더군요. 얇기 때문에 꼭툭튀도 있습니다. 평소에 입기엔 문제 없는데 운동용이라면 무조건 업하셔야 합니다. </p>
                    </li>
                    <li class="re_per">
                        <div>
                            <h5 class="ratingstar4">나이키 남여공용 스포츠웨어 블랙,XL</h5>
                            <span class="re_id">kks****** 2023-08-30</span>
                        </div>
                        <h3>정사이즈로...</h3>
                        <p class="re_text"> 한치수 작게(M) 주문했더니, 좀 타이트 하네요. </p>
                    </li>
                </ul>
            </article>
                <div class="paging">
                    <span class="prev">
                        <a href="#"> 이전</a>
                    </span>
                    <span class="num">
                        <a href="#" class="on">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#">6</a>
                        <a href="#">7</a>
                    </span>
                    <span class="next">
                        <a href="#">다음 ></a>
                    </span>
                </div>
        <div class="cart_div">
            <a href="cart.html"><img src="img/cart.png" alt=""></a>
        </div>
</section>
     <jsp:include page="footer.jsp"></jsp:include>
    </body>

</html>