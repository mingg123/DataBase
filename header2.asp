<% @Language="VBScript" CODEPAGE="65001" %>
<%
Response.CharSet="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"
%>

<html>
<head>
<style>
#sidebar
{
  position:relative;
  z-index:1;
}

.submenu
{              /* 하위 메뉴 스타일 설정 */
    position: absolute;     /* html의 flow에 영향을 미치지 않게 absolute 설정 */
    left:630px;
	height: 0px;            /* 초기 높이는 0px로 설정 */
    overflow: hidden;       /* 실 내용이 높이보다 커지면 해당 내용 감춤 */
    transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(기본) */
    -webkit-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 크롬/사파라ㅣ) */
    -moz-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 파폭) */
    -o-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 오페라) */
	z-index: 1111;
}
.submenu1
{              /* 하위 메뉴 스타일 설정 */
    position: absolute;     /* html의 flow에 영향을 미치지 않게 absolute 설정 */
    left:720px;
	height: 0px;            /* 초기 높이는 0px로 설정 */
    overflow: hidden;       /* 실 내용이 높이보다 커지면 해당 내용 감춤 */
    transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(기본) */
    -webkit-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 크롬/사파라ㅣ) */
    -moz-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 파폭) */
    -o-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 오페라) */
	z-index: 1111;
}

.submenu2
{              /* 하위 메뉴 스타일 설정 */
    position: absolute;     /* html의 flow에 영향을 미치지 않게 absolute 설정 */
    left:790px;
	height: 0px;            /* 초기 높이는 0px로 설정 */
    overflow: hidden;       /* 실 내용이 높이보다 커지면 해당 내용 감춤 */
    transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(기본) */
    -webkit-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 크롬/사파라ㅣ) */
    -moz-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 파폭) */
    -o-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 오페라) */
	z-index: 1111;
}



.submenuLink 
{          /* 하위 메뉴의 a 태그 스타일 설정 */
     color: #2d2d2d;             /* 글씨 색을 RGB(2D2D2D)로 설정 */
     background-color: white;    /* 배경색을 흰색으로 설정 `*/
     border: solid 1px black;    /* 테두리를 설정 */
     margin-top: -1px;           /* 위 칸의 하단 테두리와 아래칸의 상단 테두리가 겹쳐지도록 설덩 */
	 z-index: 1111;
}

.submenuLink 
{           /* 상위 메뉴와 하위 메뉴의 a 태그에 공통으로 설정할 스타일 */
    text-decoration:none;               /* a 태그의 꾸밈 효과 제거 */
    display: block;                     /* a 태그의 클릭 범위를 넓힘 */
	width: 80px;                       /* 기본 넓이를 80px로 설정 */
    font-size: 14px;                    /* 폰트 사이즈를 14px로 설정 */
    font-weight: bold;                  /* 폰트를 굵게 설정 */
    font-family: "Trebuchet MS", Dotum; /* 기본 폰트를 영어/한글 순서대로 설정 */
	z-index: 1111;
}

.submenuLink:hover 
{        /* 하위 메뉴의 a 태그의 마우스 오버 스타일 설정 */
    color: red;                 /* 글씨색을 빨간색으로 설정 */
    background-color: #dddddd;  /* 배경을 RGB(DDDDDD)로 설정 */
}

.menu:hover .submenu
{ /* 상위 메뉴에 마우스 모버한 경우 그 안의 하위 메뉴 스타일 설정 */
    height: 300px;           /* 높이를 93px로 설정 */
}

.menu:hover .submenu1
{ /* 상위 메뉴에 마우스 모버한 경우 그 안의 하위 메뉴 스타일 설정 */
    height: 300px;           /* 높이를 93px로 설정 */
}

.menu:hover .submenu2
{ /* 상위 메뉴에 마우스 모버한 경우 그 안의 하위 메뉴 스타일 설정 */
    height: 300px;           /* 높이를 93px로 설정 */
}





ul#menu {
    padding: 0;
}

ul#menu li {
    display: inline;
}

ul#menu li a {
    background-color: black;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 4px 4px 0 0;
}

ul#menu li a:hover {
    background-color: orange;
}


</style>
</head>


<body>

<center>
<li><a href="homepage2.asp"><font size=20><b>&nbsp&nbsp&nbsp InhaStudy</font></br></b></a></li>






<ul id="menu">

	
  <li><a href="logout.asp">로그아웃</a></li>
  <li><a href="마이페이지.asp">마이페이지</a></li>
  <li class="menu"><a>강좌</a>
  <ul class="submenu">
  <li><a class="submenuLink" href="로그인후국어.asp">국어</a></li>
  <li><a class="submenuLink" href="로그인후수학.asp">수학</a></li>
  <li><a class="submenuLink" href="로그인후사회.asp">사회</a></li>
  <li><a class="submenuLink" href="로그인후과학.asp">과학</a></li>
  <li><a class="submenuLink" href="로그인후영어.asp">영어</a></li>
  <li><a class="submenuLink" href="로그인후한국사.asp">한국사</a></li>
  <li><a class="submenuLink" href="로그인후제2외국어.asp">제2외국어</a></li>
  <li><a class="submenuLink" href="로그인후한자.asp">한자</a></li>
  </ul>

  </li>
    <li class ="menu"><a>시험</a>
  <ul class="submenu1">
  <li><a class="submenuLink" href="국어시험.asp">국어</a></li>
  <li><a class="submenuLink" href="수학시험.asp">수학</a></li>
  <li><a class="submenuLink" href="사회시험.asp">사회</a></li>
  <li><a class="submenuLink" href="과학시험.asp">과학</a></li>
  <li><a class="submenuLink" href="영어시험.asp">영어</a></li>
  <li><a class="submenuLink" href="한국사시험.asp">한국사</a></li>
  <li><a class="submenuLink" href="제2외국어시험.asp">제2외국어</a></li>
  <li><a class="submenuLink" href="한자시험.asp">한자</a></li>
  </ul>
  </li>

  <li class ="menu"><a>책구매</a>
  <ul class="submenu2">
  <li><a class="submenuLink" href="국어책구매.asp">국어</a></li>
  <li><a class="submenuLink" href="수학책구매.asp">수학</a></li>
  <li><a class="submenuLink" href="사회책구매.asp">사회</a></li>
  <li><a class="submenuLink" href="과학책구매.asp">과학</a></li>
  <li><a class="submenuLink" href="영어책구매.asp">영어</a></li>
  <li><a class="submenuLink" href="한국사구매.asp">한국사</a></li>
  <li><a class="submenuLink" href="제2외국어책구매.asp">제2외국어</a></li>
  <li><a class="submenuLink" href="한자책구매.asp">한자</a></li>
  </ul>
  </li>
  <li><a href="강사.asp">강사프로필</a></li>
  
   <li><a href="공개자료.asp">공개자료</a></li>

  </center>  
</ul>  


</body>
</html>

