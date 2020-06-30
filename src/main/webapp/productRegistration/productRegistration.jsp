<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="resources/css/productRegistration.css">
    <link rel="stylesheet" href="resources/css/summernote/summernote-lite.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    <title>All-tion</title>
</head>
<body>
    <!-- 모든 페이지 공통 영역 by 하나  -->
    <div class="header">
        <div class="upper_header">
            <div class="upper_header--nav">
                <p>
                    <a href="">고객 센터</a>
                </p>
                <ul>
                    <li>
                        <a href="#">로그인</a>
                    </li>
                    <li>
                        <a href="#">회원 가입</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="lower_header">
            <div class="lower_header--nav">
                <h1 class="logo">
                    <a href="#">ALL-TION</a>
                </h1>
                <div class="category">
                    <a class="category--drop">
                        <img src="resources/img/header/category_tab.png">
                    </a>
                </div>
                <div class="search">
                    <select class="search--select">
                        <option value="">전체</option>
                        <option value="cate01">패션</option>
                        <option value="cate02">뷰티</option>
                        <option value="cate03">출산/유아동</option>
                        <option value="cate04">전자기기</option>
                        <option value="cate05">가전제품</option>
                        <option value="cate06">가구/인테리어</option>
                        <option value="cate07">반려동물/취미</option>
                        <option value="cate08">도서/음반/문구</option>
                        <option value="cate09">티켓/쿠폰</option>
                        <option value="cate10">스포츠</option>
                        <option value="cate11">공구/산업용품</option>
                        <option value="cate12">기타잡화</option>
                    </select>
                    <input type="text" placeholder="찾으시는 상품을 입력해 주세요" class="search__input">
                </div>
                <ul class="member_info">
                    <li>
                        <a href="#">
                            <span class="material-icons">perm_identity</span>
                            <span>마이 페이지</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="material-icons">turned_in_not</span>
                            <span>찜 목록</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="material-icons">access_time</span>
                            <span>참여 경매</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    
    <!-- 경매등록 시작 -->
    
    <section id="product" class="product">
       
        <!-- 타이틀 -->
        <div class="product--title">
            <h1>경매 등록</h1>
        </div>
        
        <!-- 입력폼 -->
        <form name="product_form" class="product--form">

           <!-- 카테고리 시작 -->
            <div class="form--category">
                <div class="category--subtitle">
                    <span class="material-icons">done</span>
                </div>
                <div class="category--route">
                    <div class="category--route__title">
                        <p>선택한 카테고리 경로</p>
                    </div>
                    <div class="category--route__text">
                        <p></p>
                    </div>
                </div>
                <div class="category--select">
                    <select class="category--select__01" name="product_category_1" size="7" onchange="changeCategory(this)">
                        <option value="">- 선택해주세요 -</option>
                        <option value="cate01">패션</option>
                        <option value="cate02">뷰티</option>
                        <option value="cate03">출산/유아동</option>
                        <option value="cate04">전자기기</option>
                        <option value="cate05">가전제품</option>
                        <option value="cate06">가구/인테리어</option>
                        <option value="cate07">반려동물/취미</option>
                        <option value="cate08">도서/음반/문구</option>
                        <option value="cate09">티켓/쿠폰</option>
                        <option value="cate10">스포츠</option>
                        <option value="cate11">공구/산업용품</option>
                        <option value="cate12">기타잡화</option>
                    </select>
                    
                </div>
            </div>
            <!-- 카테고리 끝 -->
            
            <!-- 상품 정보 시작 -->
            <div class="form--info">
                <div class="info--subtitle">
                    <span class="material-icons">done</span>
                    <p class="info--notice"> * 표시는 필수 항목입니다</p>
                </div>
                <div class="info--form_wrap">
                   
                    <div class="form_wrap--items">
                        <div class="form_wrap--items__title">
                            <p>상품 제목(<span class="notice">*</span>)</p>
                        </div>
                        <div class="form_wrap--items__contents">
                            <input type="text" name="product_subject">
                        </div>
                    </div>
                    
                    <div class="form_wrap--items">
                        <div class="form_wrap--items__title">
                            <p>상품 설명(<span class="notice">*</span>)</p>
                        </div>
                        <div class="form_wrap--items__contents">
                            <p>
								※ 사이즈, 색상 사용감, 사용기간, 보증기간 등 상세한 상품정보를 입력하면 더욱 수월하게 거래할 수 있습니다
							</p>
                            <textarea id="summernote" name="product_content"></textarea>
                        </div>
                    </div>
                    
                    <div class="form_wrap--items">
                        <div class="form_wrap--items__title">
                            <p>이미지 등록(<span class="notice">*</span>)</p>
                        </div>
                        <div class="form_wrap--items__contents">
                            <input type="text">
                            <a href="" class="form_wrap--items__file">파일첨부</a>
                            <p>
								이미지형식 : JPG / * 사이즈 규격 : 가로폭 1000px (1000px 보다 클 경우 1000이하로 자동 편집됩니다) 10장까지 등록 가능합니다.<br>
								원활한 물품등록을 위하여 이미지 1장 기준으로 10MB 이하로 등록하셔야 합니다.
							</p>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!-- 상품 정보 끝 -->
            
            <!-- 경매 설정 시작 -->
            <div class="form--auction">
                <div class="auction--subtitle">
                    <span class="material-icons">done</span>
                </div>
                <div class="auction--form_wrap">
                   
                    <div class="form_wrap--items">
                        <div class="form_wrap--items__title">
                            <p>시작가(<span class="notice">*</span>)</p>
                        </div>
                        <div class="form_wrap--items__contents">
                            <input class="wd150" type="text" name="product_starting_price"><span> 원</span>
                        </div>
                    </div>
                    
                    <div class="form_wrap--items">
                        <div class="form_wrap--items__title">
                            <p>입찰 단위(<span class="notice">*</span>)</p>
                        </div>
                        <div class="form_wrap--items__contents">
                            <select class="wd120" name="product_bidding_unit">
                                <option value="">선택하세요</option>
                                <option value="100">100원</option>
                                <option value="200">200원</option>
                                <option value="500">500원</option>
                                <option value="1000">1,000원</option>
                                <option value="2000">2,000원</option>
                                <option value="5000">5,000원</option>
                                <option value="10000">10,000원</option>
                                <option value="20000">20,000원</option>
                                <option value="50000">50,000원</option>
                                <option value="100000">100,000원</option>
                            </select>
                        </div>
                    </div>
                    
                    <div class="form_wrap--items">
                        <div class="form_wrap--items__title">
                            <p>경매 기간(<span class="notice">*</span>)</p>
                        </div>
                        <div class="form_wrap--items__contents">
                           <select class="wd90" onchange="changeEndDate(this.value)">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                            </select><span> 일 진행</span>
                            <span class="fw700" >마감 </span>
                            <input class="endDate" type="text" name="product_end_date" readonly>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!-- 경매 설정 끝 -->
            
            <!-- 배송 설정 시작 -->
            <div class="form--delivery">
                <div class="delivery--subtitle">
                    <span class="material-icons">done</span>
                </div>
                <div class="delivery--form_wrap">
                   
                    <div class="form_wrap--items">
                        <div class="form_wrap--items__title">
                            <p>택배 거래(<span class="notice">*</span>)</p>
                        </div>
                        <div class="flexCenter form_wrap--items__contents">
                            <label>
                                <input type="radio" name="product_delivery" value="10" checked>착불
                            </label>
                            <label>
                                <input type="radio" name="product_delivery" value="20">선불
                            </label>
                            <label>
                                <input type="radio" name="product_delivery" value="0">불가능
                            </label>
                        </div>
                    </div>
                    
                    <div class="form_wrap--items">
                        <div class="form_wrap--items__title">
                            <p>직거래(<span class="notice">*</span>)</p>
                        </div>
                        <div class="flexCenter form_wrap--items__contents">
                            <div class="flexCenter minH50">
                                <label>
                                    <input type="radio" name="direct" value="0" onclick="changeInput(this)" checked>불가능
                                </label>
                                <label>
                                    <input type="radio" name="direct" value="1" onclick="changeInput(this)">가능
                                </label>
                            </div>
                            <div>
                                <span class="fw700" >가능지역 </span>
                                <input class="directArea readonlyfalse" type="text" name="product_transaction_area" readonly>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!-- 배송 설정 끝 -->
            
            <!-- 기타 설정 시작 -->
            <div class="form--other">
                <div class="other--subtitle">
                    <span class="material-icons">done</span>
                </div>
                <div class="other--form_wrap">
                   
                    <div class="form_wrap--items">
                        <div class="form_wrap--items__title">
                            <p>즉시 구매(<span class="notice">*</span>)</p>
                        </div>
                        <div class="flexCenter form_wrap--items__contents">
                            <div class="flexCenter minH50">
                                <label>
                                    <input type="radio" name="purchase" value="0" onclick="changeInput(this)" checked>불가능
                                </label>
                                <label>
                                    <input type="radio" name="purchase" value="1" onclick="changeInput(this)">가능
                                </label>
                            </div>
                            <div>
                                <span class="fw700" >금액 </span>
                                <input class="purchasePrice readonlyfalse" type="text" name="product_purchase_price" readonly>
                            </div>
                        </div>
                    </div>
                    
                    <div class="form_wrap--items">
                        <div class="form_wrap--items__title">
                            <p>자동 재경매(<span class="notice">*</span>)</p>
                        </div>
                        <div class="form_wrap--items__contents">
                            <p>
								 ※ 재경매 감가금액<br>
	                            10,000원 이하 : 1,000원 차감<br>
	                            30,000원 이하 : 3,000원 차감<br>
	                            50,000원 이하 : 5,000원 차감<br>
	                            100,000원 이하 : 10,000원 차감<br>
	                            300,000원 이하 : 20,000원 차감<br>
	                            500,000원 이하 : 30,000원 차감<br>
	                            500,000원 초과 : 40,000원 차감<br><br>
								예시) 시작가 32,000원으로 낙찰이 안됬을경우 -&gt; 시작가를 29,000원으로 차감 후 경매시작
                            </p>
                            <div class="flexCenter minH50">
                                <label>
                                    <input type="radio" name="product_re_auction" value="0" checked> 불가능
                                </label>
                                <label>
                                    <input type="radio" name="product_re_auction" value="1">가능
                                </label>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!-- 기타 설정 끝 -->
            
            <!-- 경고 -->
            <div class="form--warning">
                <p>
	                * 부정확한 정보로 인한 경매사고 발생시 신용도에 반영될 수 있으며 사이트 이용에 대한 제제를 받을 수 있습니다.<br>
	                * 등록된 물품과 관련하여 발생하는 모든 법적 책임은 판매자에게 있습니다
                </p>
            </div>
            
            <!-- submit -->
            <div class="form--button">
                <a class="form-button__submit" onclick="productInsert()">등록</a>
                <a class="form-button__cancel" onclick="product_form.reset()">다시 작성</a>
            </div>
            
        </form>
    </section>
    <!-- 경매등록 끝 -->
    
    <!-- 푸터 영역 -->
    <div class="footer">
        <div class="upper_footer">
            <ul class="upper_footer--list">
                <li>
                    <a href="#">
                        올션소개
                    </a>
                </li>
                <li>
                    <a href="#">
                        채용정보
                    </a>
                </li>
                <li>
                    <a href="#">
                        공지사항
                    </a>
                </li>
                <li>
                    <a href="#">
                        이용약관
                    </a>
                </li>
                <li>
                    <a href="#">
                        개인정보처리방침
                    </a>
                </li>
                <li>
                    <a href="#">
                        전자금융거래약관
                    </a>
                </li>
                <li>
                    <a href="#">c
                        제휴서비스
                    </a>
                </li>
            </ul>
        </div>
        <div class="lower_footer">
            
        </div>        
    </div>
    
    <!--  스크립트 영역  -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="resources/js/productRegistration.js"></script>
	<script src="resources/js/summernote/summernote-lite.js"></script>
	<script src="resources/js/summernote/summernote-ko-KR.js"></script>
</body>
</html>