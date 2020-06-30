<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="./resources/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
    <title>All-tion</title>
</head>
<body>
<c:choose>

<c:when test="${member_id != null}"><!-- 메인페이지 로그인시 -->
 <!-- 모든 페이지 공통 영역 by 하나  -->
    <!-- 광고 배너 및 헤더 -->
    
	<a href="https://coupa.ng/bEUWaE" target="_blank"><img src="https://ads-partners.coupang.com/banners/263827?subId=&traceId=V0-301-969b06e95b87326d-I263827&w=728&h=90" alt=""></a>
    <div class="ad__banner">
        <a href="#" class="ad__banner--link">
            <img src="./resources/img/header/adEx.png" class="ad__banner--img">
            <button class="ad__banner--closeBtn"></button>
        </a>
    </div>
  
    <div class="header">
        <div class="upper_header">
            <div class="upper_header--nav">
                <p>
                    <a href="">고객 센터</a>
                </p>
                <ul>
                    <li>
                        <a href="./loginForm.me">${member_id}</a>
                    </li>
                    <li>
                        <a href="./logout.me">로그아웃</a>
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
                        <img src="./resources/img/header/category_tab.png">
                    </a>
                </div>
                <div class="search">
                    <select class="search--select">
                        <option value="">전체</option>
                        <option value="패션">패션</option>
                        <option value="뷰티">뷰티</option>
                        <option value="출산/유아동">출산/유아동</option>
                        <option value="전자기기">전자기기</option>
                        <option value="가전제품">가전제품</option>
                        <option value="가구/인테리어">가구/인테리어</option>
                        <option value="반려동물/취미">반려동물/취미</option>
                        <option value="도서/음반/문구">도서/음반/문구</option>
                        <option value="티켓/쿠폰">티켓/쿠폰</option>
                        <option value="스포츠">스포츠</option>
                        <option value="공구/산업용품">공구/산업용품</option>
                        <option value="기타잡화">기타잡화</option>
                    </select>
                    <input type="text" placeholder="찾으시는 상품을 입력해 주세요" class="search__input">
                </div>
                <ul class="member_info">
                    <li>
                        <a href="./mypage.me">
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
  
    <!-- !! 메인 페이지 내용(지워서 사용함) !! start -->
   
    <!-- 경매 규칙 및 회원 등급 제도 설명 -->
    <div class="rules">
        <div class="rules__content">
            <ul class="rules__content">
                <li></li>
                <li></li>
            </ul>
        </div>
    </div>
    <!-- !! 메인 페이지 내용(지워서 사용함) !! end -->
    
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
                    <a href="#">
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
    <script type="text/javascript">
        $(function(){
            // 광고 없애기
            $(".ad__banner--closeBtn").click(function(){
                $(".ad__banner").hide();
			})
            
            // 헤더 고정
            var header = $('.lower_header');
            $(window).scroll(function(){
                if($(this).scrollTop() > 0){
                        header.addClass('sticky');
                   }else{
                        header.removeClass('sticky');
                   }
            })
            
            // 카테고리 누를 때마다 이동
            $("ul.deadline-items__category a").click(function(){
//                
//                var activeTab = $(this).attr('id');
//                
//				$('ul.deadline-items__category a').removeClass('active');
//				$('.menu-box').removeClass('active');
//				$(this).prop('checked', true);
//				$('div#' + activeTab).addClass('active');
            })
        });
    </script>
</c:when>

<c:otherwise><!-- 로그인 하지 않았을때 메인페이지 -->
 <!-- 모든 페이지 공통 영역 by 하나  -->
    <!-- 광고 배너 및 헤더 -->
    
    <div class="ad__banner">
	    <a href="https://coupa.ng/bEUWaE" target="_blank" class="ad__banner--link">
	    <img src="https://ads-partners.coupang.com/banners/263827?subId=&traceId=V0-301-969b06e95b87326d-I263827&w=728&h=90" class="ad__banner--img" alt="">
	    <button class="ad__banner--closeBtn"></button>
	    </a>
        <!--
        <a href="#" class="ad__banner--link">
            <img src="./resources/img/header/adEx.png" class="ad__banner--img">
            <button class="ad__banner--closeBtn"></button>
        </a>
        -->
    </div>
    
    <div class="header">
        <div class="upper_header">
            <div class="upper_header--nav">
                <p>
                    <a href="">고객 센터</a>
                </p>
                <ul>
                    <li>
                        <a href="./loginForm.me">로그인</a>
                    </li>
                    <li>
                        <a href="./naverjoin.me">회원 가입</a>
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
                        <img src="./resources/img/header/category_tab.png">
                    </a>
                </div>
                <div class="search">
                    <select class="search--select">
                        <option value="">전체</option>
                        <option value="패션">패션</option>
                        <option value="뷰티">뷰티</option>
                        <option value="출산/유아동">출산/유아동</option>
                        <option value="전자기기">전자기기</option>
                        <option value="가전제품">가전제품</option>
                        <option value="가구/인테리어">가구/인테리어</option>
                        <option value="반려동물/취미">반려동물/취미</option>
                        <option value="도서/음반/문구">도서/음반/문구</option>
                        <option value="티켓/쿠폰">티켓/쿠폰</option>
                        <option value="스포츠">스포츠</option>
                        <option value="공구/산업용품">공구/산업용품</option>
                        <option value="기타잡화">기타잡화</option>
                    </select>
                    <input type="text" placeholder="찾으시는 상품을 입력해 주세요" class="search__input">
                </div>
                <ul class="member_info">
                    <li>
                        <a href="./loginForm.me">
                            <span class="material-icons">perm_identity</span>
                            <span>마이 페이지</span>
                        </a>
                    </li>
                    <li>
                        <a href="./loginForm.me">
                            <span class="material-icons">turned_in_not</span>
                            <span>찜 목록</span>
                        </a>
                    </li>
                    <li>
                        <a href="./loginForm.me">
                            <span class="material-icons">access_time</span>
                            <span>참여 경매</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
  
    <!-- !! 메인 페이지 내용(지워서 사용함) !! start -->
   
    <!-- 경매 규칙 및 회원 등급 제도 설명 -->
    <div class="rules">
        <div class="rules__content">
            <ul class="rules__content">
                <li></li>
                <li></li>
            </ul>
        </div>
    </div>
    <!-- !! 메인 페이지 내용(지워서 사용함) !! end -->
    
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
                    <a href="#">
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
    <script type="text/javascript">
        $(function(){
            // 광고 없애기
            $(".ad__banner--closeBtn").click(function(){
                $(".ad__banner").hide();
			})
            
            // 헤더 고정
            var header = $('.lower_header');
            $(window).scroll(function(){
                if($(this).scrollTop() > 0){
                        header.addClass('sticky');
                   }else{
                        header.removeClass('sticky');
                   }
            })
            
            // 카테고리 누를 때마다 이동
            $("ul.deadline-items__category a").click(function(){
//                
//                var activeTab = $(this).attr('id');
//                
//				$('ul.deadline-items__category a').removeClass('active');
//				$('.menu-box').removeClass('active');
//				$(this).prop('checked', true);
//				$('div#' + activeTab).addClass('active');
            })
        });
    </script>
</c:otherwise>
</c:choose>
</body>
</html>
