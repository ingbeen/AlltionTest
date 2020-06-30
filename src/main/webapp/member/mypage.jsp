<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <link rel="stylesheet" href="./resources/css/style1.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>All-tion - ���� ������</title>
    <style>
    </style>
</head>
<body>
<c:choose>

<c:when test="${member_id != null}"><!-- ���������� �α��ν� -->
    <!-- ��� ������ ���� ���� by �ϳ�  -->
    <!-- ���� ��� �� ��� -->
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
                    <a href="" id="clock"></a>
                </p>
                <ul>
                    <li>
                        <a href="./loginForm.me">${member_id}</a>
                    </li>
                    <li>
                        <a href="./logout.me">�α׾ƿ�</a>
                    </li>
                    <li>
                        <a href="#">�� ����</a>
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
                        <option value="">��ü</option>
                        <option value="�м�">�м�</option>
                        <option value="��Ƽ">��Ƽ</option>
                        <option value="���/���Ƶ�">���/���Ƶ�</option>
                        <option value="���ڱ��">���ڱ��</option>
                        <option value="������ǰ">������ǰ</option>
                        <option value="����/���׸���">����/���׸���</option>
                        <option value="�ݷ�����/���">�ݷ�����/���</option>
                        <option value="����/����/����">����/����/����</option>
                        <option value="Ƽ��/����">Ƽ��/����</option>
                        <option value="������">������</option>
                        <option value="����/�����ǰ">����/�����ǰ</option>
                        <option value="��Ÿ��ȭ">��Ÿ��ȭ</option>
                    </select>
                    <input type="text" placeholder="ã���ô� ��ǰ�� �Է��� �ּ���" class="search__input">
                </div>
                <ul class="member_info">
                    <li>
                        <a href="../mypage/mypage.html">
                            <span class="material-icons">perm_identity</span>
                            <span>���� ������</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="material-icons">turned_in_not</span>
                            <span>�� ���</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="material-icons">access_time</span>
                            <span>���� ���</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--  ���� ������ ����  -->
    <div class="myPage__main">
        <h3 class="myPage__title">���� ������</h3>
        <ul class="myPage__category">
            <li>
                <a href="">
                    <span class="material-icons">recent_actors</span><br>
                    <span class="myPage__menu">ȸ�� ����</span>
                </a>
            </li>
            <li>
                <a href="">
                    <span class="material-icons">receipt</span><br>
                    <span class="myPage__menu">���� ����</span>
                </a>
            </li>
            <li>
                <a href="">
                    <span class="material-icons">list</span><br>
                    <span class="myPage__menu">���� ����</span>
                </a>
            </li>
            <li>
                <a href="">
                    <span class="material-icons">forum</span><br>
                    <span class="myPage__menu">Ȱ�� ����</span>
                </a>
            </li>
            <li>
                <a href="">
                    <span class="material-icons">credit_card</span><br>
                    <span class="myPage__menu">e-�Ӵ�</span>
                </a>
            </li>
            <li>
                <a href="">
                    <span class="material-icons">bookmarks</span><br>
                    <span class="myPage__menu">�� ���</span>
                </a>
            </li>
            <li>
                <a href="">
                    <span class="material-icons">money</span><br>
                    <span class="myPage__menu">�ſ� ���</span>
                </a>
            </li>
            <li>
                <a href="">
                    <span class="material-icons">poll</span><br>
                    <span class="myPage__menu">���� ���</span>
                </a>
            </li>
        </ul>
    </div>
    <!-- Ǫ�� ���� -->
    <div class="footer">
        <div class="upper_footer">
            <ul class="upper_footer--list">
                <li>
                    <a href="#">
                        �üǼҰ�
                    </a>
                </li>
                <li>
                    <a href="#">
                        ä������
                    </a>
                </li>
                <li>
                    <a href="#">
                        ��������
                    </a>
                </li>
                <li>
                    <a href="#">
                        �̿���
                    </a>
                </li>
                <li>
                    <a href="#">
                        ��������ó����ħ
                    </a>
                </li>
                <li>
                    <a href="#">
                        ���ڱ����ŷ����
                    </a>
                </li>
                <li>
                    <a href="#">
                        ���޼���
                    </a>
                </li>
            </ul>
        </div>
        <div class="lower_footer">
            
        </div>        
    </div>
    
    <!--  ��ũ��Ʈ ����  -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        $(function(){
            // ���� ���ֱ�
            $(".ad__banner--closeBtn").click(function(){
                $(".ad__banner").hide();
			})
            
            // ����� �ð� �ֱ�
            let time = new Date();
            
            
            // ��� ����
            let header = $('.lower_header');
            $(window).scroll(function(){
                if($(this).scrollTop() > 0){
                    header.addClass('sticky');
                }else{
                    header.removeClass('sticky');
                }
            })
        });
        
        // 2020-06-23 pm 03:55 �߰�
        // �ǽð� �ð� ���ϱ�
        setInterval(function(){
             
            let nowDate = new Date();
            let day = ['(��)', '(��)', '(ȭ)', '(��)', '(��)', '(��)', '(��)'];
            let dayNum = nowDate.getDay();
            let year = nowDate.getFullYear();
            let month= nowDate.getMonth() + 1;
            let date = nowDate.getDate();
            let hour = nowDate.getHours();
            let min = nowDate.getMinutes();
            let sec = nowDate.getSeconds();
            
            /*
            // ���� ���ķ� ������ ���� ��
            let amPm = '����';
            
            if(hour >= 12) {
                amPm = '����';
                hour = hour - 12;
            }
            
            document.getElementById('clock').innerHTML = year + '��' + '&nbsp;' + month + '��' + '&nbsp;' + date + '��' + day[dayNum] + '&nbsp;' + amPm + '&nbsp;' + addZero(hour) + ":" + addZero(min) + ":" + addZero(sec);
            */
            
            document.getElementById('clock').innerHTML = year + '��' + '&nbsp;' + month + '��' + '&nbsp;' + date + '��' + day[dayNum] + '&nbsp;' + hour + ":" + addZero(min) + ":" + addZero(sec);
        },1000);
        
        // ���� �ڸ� ������ �� 0 �ٿ� �ֱ�
        function addZero(i) {
            if (i < 10) {
                i = '0' + i
            };
            return i;
        } // 2020-06-23 pm 03:55 �߰�
    </script>
</c:when>
<c:otherwise>
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
                    <a href="" id="clock"></a>
                </p>
                <ul>
                    <li>
                        <a href="./loginForm.me">${member_id}</a>
                    </li>
                    <li>
                        <a href="./logout.me">�α׾ƿ�</a>
                    </li>
                    <li>
                        <a href="#">�� ����</a>
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
                        <option value="">��ü</option>
                        <option value="�м�">�м�</option>
                        <option value="��Ƽ">��Ƽ</option>
                        <option value="���/���Ƶ�">���/���Ƶ�</option>
                        <option value="���ڱ��">���ڱ��</option>
                        <option value="������ǰ">������ǰ</option>
                        <option value="����/���׸���">����/���׸���</option>
                        <option value="�ݷ�����/���">�ݷ�����/���</option>
                        <option value="����/����/����">����/����/����</option>
                        <option value="Ƽ��/����">Ƽ��/����</option>
                        <option value="������">������</option>
                        <option value="����/�����ǰ">����/�����ǰ</option>
                        <option value="��Ÿ��ȭ">��Ÿ��ȭ</option>
                    </select>
                    <input type="text" placeholder="ã���ô� ��ǰ�� �Է��� �ּ���" class="search__input">
                </div>
                <ul class="member_info">
                    <li>
                        <a href="../mypage/mypage.html">
                            <span class="material-icons">perm_identity</span>
                            <span>���� ������</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="material-icons">turned_in_not</span>
                            <span>�� ���</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="material-icons">access_time</span>
                            <span>���� ���</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--  ���� ������ ����  -->
    <div class="myPage__main">
        <h3 class="myPage__title">���� ������</h3>
        <ul class="myPage__category">
            <li>
                <a href="">
                    <span class="material-icons">recent_actors</span><br>
                    <span class="myPage__menu">ȸ�� ����</span>
                </a>
            </li>
            <li>
                <a href="">
                    <span class="material-icons">receipt</span><br>
                    <span class="myPage__menu">���� ����</span>
                </a>
            </li>
            <li>
                <a href="">
                    <span class="material-icons">list</span><br>
                    <span class="myPage__menu">���� ����</span>
                </a>
            </li>
            <li>
                <a href="">
                    <span class="material-icons">forum</span><br>
                    <span class="myPage__menu">Ȱ�� ����</span>
                </a>
            </li>
            <li>
                <a href="">
                    <span class="material-icons">credit_card</span><br>
                    <span class="myPage__menu">e-�Ӵ�</span>
                </a>
            </li>
            <li>
                <a href="">
                    <span class="material-icons">bookmarks</span><br>
                    <span class="myPage__menu">�� ���</span>
                </a>
            </li>
            <li>
                <a href="">
                    <span class="material-icons">money</span><br>
                    <span class="myPage__menu">�ſ� ���</span>
                </a>
            </li>
            <li>
                <a href="">
                    <span class="material-icons">poll</span><br>
                    <span class="myPage__menu">���� ���</span>
                </a>
            </li>
        </ul>
    </div>
    <!-- Ǫ�� ���� -->
    <div class="footer">
        <div class="upper_footer">
            <ul class="upper_footer--list">
                <li>
                    <a href="#">
                        �üǼҰ�
                    </a>
                </li>
                <li>
                    <a href="#">
                        ä������
                    </a>
                </li>
                <li>
                    <a href="#">
                        ��������
                    </a>
                </li>
                <li>
                    <a href="#">
                        �̿���
                    </a>
                </li>
                <li>
                    <a href="#">
                        ��������ó����ħ
                    </a>
                </li>
                <li>
                    <a href="#">
                        ���ڱ����ŷ����
                    </a>
                </li>
                <li>
                    <a href="#">
                        ���޼���
                    </a>
                </li>
            </ul>
        </div>
        <div class="lower_footer">
            
        </div>        
    </div>
    
    <!--  ��ũ��Ʈ ����  -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        $(function(){
            // ���� ���ֱ�
            $(".ad__banner--closeBtn").click(function(){
                $(".ad__banner").hide();
			})
            
            // ����� �ð� �ֱ�
            let time = new Date();
            
            
            // ��� ����
            let header = $('.lower_header');
            $(window).scroll(function(){
                if($(this).scrollTop() > 0){
                    header.addClass('sticky');
                }else{
                    header.removeClass('sticky');
                }
            })
        });
        
        // 2020-06-23 pm 03:55 �߰�
        // �ǽð� �ð� ���ϱ�
        setInterval(function(){
             
            let nowDate = new Date();
            let day = ['(��)', '(��)', '(ȭ)', '(��)', '(��)', '(��)', '(��)'];
            let dayNum = nowDate.getDay();
            let year = nowDate.getFullYear();
            let month= nowDate.getMonth() + 1;
            let date = nowDate.getDate();
            let hour = nowDate.getHours();
            let min = nowDate.getMinutes();
            let sec = nowDate.getSeconds();
            
            /*
            // ���� ���ķ� ������ ���� ��
            let amPm = '����';
            
            if(hour >= 12) {
                amPm = '����';
                hour = hour - 12;
            }
            
            document.getElementById('clock').innerHTML = year + '��' + '&nbsp;' + month + '��' + '&nbsp;' + date + '��' + day[dayNum] + '&nbsp;' + amPm + '&nbsp;' + addZero(hour) + ":" + addZero(min) + ":" + addZero(sec);
            */
            
            document.getElementById('clock').innerHTML = year + '��' + '&nbsp;' + month + '��' + '&nbsp;' + date + '��' + day[dayNum] + '&nbsp;' + hour + ":" + addZero(min) + ":" + addZero(sec);
        },1000);
        
        // ���� �ڸ� ������ �� 0 �ٿ� �ֱ�
        function addZero(i) {
            if (i < 10) {
                i = '0' + i
            };
            return i;
        } // 2020-06-23 pm 03:55 �߰�
    </script>

</c:otherwise>
</c:choose>
</body>
</html>