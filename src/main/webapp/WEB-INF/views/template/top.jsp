
<%@ page contentType="text/html; charset=UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="root" value="${pageContext.request.contextPath }" />
    <c:choose>
      <c:when test="${not empty sessionScope.id && sessionScope.grade == 'A'}">
        <c:set var="str">Admin</c:set>
      </c:when>
      <c:when test="${not empty sessionScope.id && sessionScope.grade != 'A'}">
        <c:set var='str'>안녕하세요 ${sessionScope.id } 님!</c:set>
      </c:when>
      <c:otherwise>
        <c:set var="str">Log In</c:set>
      </c:otherwise>
    </c:choose>


    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>EV Rent Car</title>
      <link rel="stylesheet" type="text/css" href="/resources/css/common.css">
      <link rel="stylesheet" type="text/css" href="/resources/css/top.css">
    </head>

    <body>

      <header class="header">
        <h1 class="header__title">EV Rent Car</h1>
      </header>

      <nav class="navigaiton">
        <ul class="navigation__list">

          <div class="dropdown">
            <li class="navigation__item"><span class="item__icon"><span class="icon__emoji">🌇</span></span><span
                class="item__text">Board</span></li>
            <div class="dropdown-content">
              <a href="#">Link 1</a>
              <a href="#">Link 2</a>
              <a href="#">Link 3</a>
            </div>
          </div>

          <div class="dropdown">
            <li class="navigation__item"><span class="item__icon"><span class="icon__emoji">🚖</span></span><span
                class="item__text">Rent</span></li>
            <div class="dropdown-content">
              <a href="#">차량 리스트</a>
              <a href="#">차량 예약</a>
              <a href="#">예약 현황</a>
            </div>
          </div>

          <div class="dropdown">
            <li class="navigation__item"><span class="item__icon"><span class="icon__emoji">🗺️</span></span><span
                class="item__text">Map</span></li>
            <div class="dropdown-content">
              <a href="#">충전소 조회</a>
              <a href="#">Link 2</a>
              <a href="#">Link 3</a>
            </div>
          </div>

          <c:choose>

          <c:when test="${empty sessionScope.id }">
              <div class="dropdown">
                <li class="navigation__item"><span class="item__icon"><span class="icon__emoji">🙋‍♂️</span></span>
                <span class="item__text"> <a id="grade">${str}</span></li>
                <div class="dropdown-content">
                  <a href="#">Log In Page</a>
                  <a href="#">My Page</a>
                  <a href="#">Link 3</a>
                </div>
              </div>
            </c:when>


            <c:when test="${not empty sessionScope.id && sessionScope.grade == 'A'}">
              <div class="dropdown">
                <li class="navigation__item"><span class="item__icon"><span class="icon__emoji">👨‍💻</span></span><span
                    class="item__text">Admin</span></li>
                <div class="dropdown-content">
                  <a href="#">차량관리</a>
                  <a href="#">유저관리</a>
                  <a href="#">Link 3</a>
                </div>
              </div>
            </c:when>


            <c:otherwise>
              <div class="dropdown">
                <li class="navigation__item"><span class="item__icon"><span class="icon__emoji">🙋‍♂️</span></span><span
                    class="item__text">${str}</span></li>
                <div class="dropdown-content">
                  <a href="#">Log In Page</a>
                  <a href="#">My Page</a>
                  <a href="#">Link 3</a>
                </div>
              </div>
             </c:otherwise>
          </c:choose>




        </ul>



      </nav>

    </body>

    </html>
<<<<<<< HEAD
=======
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
 <c:choose>
    <c:when test="${not empty sessionScope.id && sessionScope.grade == 'A'}">
        <c:set var="str">관리자 페이지 입니다.</c:set>
    </c:when>
    <c:when test="${not empty sessionScope.id && sessionScope.grade != 'A'}">
        <c:set var='str'>안녕하세요  ${sessionScope.id } 님!</c:set>
    </c:when>
    <c:otherwise>
        <c:set var="str">기본 페이지 입니다.</c:set>
    </c:otherwise>
</c:choose>
<!DOCTYPE html>
<html>
<head>
  <title>memo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style type="text/css">
  #grade{

   color :white;
  }
  </style>
  <script>
  $(function(){
      $.ajax({
          url: "/contents/getCategory",
          type: "GET",
          //data: JSON.stringify(),
          //contentType: "application/json; charset=utf-8;",
          dataType: "json",
          success: function(data){
          for (var i = 0; i < data.length; i++) {
          		$('#pmenu').append("<li><a href='/contents/mainlist/"+data[i].cateno+"'>" + data[i].catename + "</a></li>");
          }

          },
         error: function(request,status,error){
            alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
          }
      });//ajax end
});//페이지로딩
  </script>
</head>
<body>
<!--상단메뉴-->
<div class="container-fluid">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="${root}/">Shop</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="${root}/">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Product
        <span class="caret"></span></a>
        <ul class="dropdown-menu" id="pmenu">
        </ul>
      </li>
            <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">community
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/mypage">Mypage</a></li>
          <li><a href="${root}/contents/detail">Review</a></li>
          <li><a href="/notice/list">Notice</a></li>
          <li><a href="/naver_chatting">Q&A</a></li>
        </ul>
      </li>
    <li><a id="grade"><span class="glyphicon glyphicon-grain"></span> ${str}</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
     <c:choose>
    <c:when test="${empty sessionScope.id }">
      <li><a href="${root}/carinfo/create"><span class="glyphicon glyphicon-plus-sign"></span> 차량등록</a></li>

      <li><a href="${root}/carinfo/list"><span class="glyphicon glyphicon-list"></span> 차량목록</a></li>
      <li><a href="${root}/member/agree"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="${root}/member/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </c:when>
    <c:when test="${not empty sessionScope.id && sessionScope.grade == 'A'}">
    <li><a href="${root}/admin/contents/create"><span class="glyphicon glyphicon-plus-sign"></span> 상품등록</a></li>
    <li><a href="${root}/contents/list"><span class="glyphicon glyphicon-list"></span> 상품목록</a></li>
    <li><a href="${root}/admin/member/list"><span class="glyphicon glyphicon-list"></span> 회원목록</a></li>
    <li><a href="${root}/admin/order/list"><span class="glyphicon glyphicon-list"></span> 주문목록</a></li>
    <li><a href="${root}/member/logout"><span class="glyphicon glyphicon-log-out"></span> 로그아웃</a></li>
    </c:when>
    <c:otherwise>
    <li><a href="${root}/cart/list"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
    <li><a href="${root}/member/update"><span class="glyphicon glyphicon-edit"></span> 회원수정</a></li>
    <li><a href="${root}/member/logout"><span class="glyphicon glyphicon-log-out"></span> 로그아웃</a></li>
        </c:otherwise>
    </c:choose>

    </ul>
  </div>
</nav>

</div>
</body>
</html>
=======



>>>>>>> ef8db476309123585ff1cbfc0044a0080c84c9c4
