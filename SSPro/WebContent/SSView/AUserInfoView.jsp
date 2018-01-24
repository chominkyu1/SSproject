<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<!-- 모바일 최적화: 부트스트랩은 한번의 개발로 PC, 타블렛, 스마트폰 등
        다양한 기기에서 작동할수 있도록 만들어진 툴-->

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootsrap CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="/SSPro/css/font.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/userinfo.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/nav2.css">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-default">
	<div>
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"> <img
				src="/SSPro/img/logo-p.png"></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">menu<span
						class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<c:if test="${spaceuser=='success' }">
							<li><a href="#">공간게시글 등록하기</a></li>
						</c:if>

						<li><a href="#">내정보수정</a></li>

						<c:if test="${spaceuser=='success' }">
							<li><a href="#">요청현황</a></li>
						</c:if>

						<c:if test="${artistuser=='success' }">
							<li><a
								href="asklist.do?action=artistask&email=${artistemail }">요청현황</a>
							</li>
						</c:if>

						<li><a href="#">서비스 정보</a></li>
						<li><a href="#">로그아웃</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>


	<div class="cont_principal">

		<div class="cont_centrar">
			<div class="cont_login">
				   <form action="mypageart.do?action=updateart" method="post">
					<div class="cont_tabs_login">
						<ul class='ul_tabs'>
							<li class="active"><a href="#">아티스트 정보</a> <span
								class="linea_bajo_nom"></span></li>
						</ul>
					</div>
					<div class="cont_text_inputs">
					    <input type="hidden" name="amember_id" value="${memberartistvo.amember_id}">
						<input type="text" class="input_form_sign d_block active_inp" placeholder="이메일" 
						name="amember_email" disabled value="${memberartistvo.amember_email}"/> 
						<input type="password" class="input_form_sign d_block active_inp" placeholder="비밀번호" 
						name="amember_pass" value="${memberartistvo.amember_pass}"/> 
						<input type="password" class="input_form_sign d_block active_inp" placeholder="비밀번호 확인"
						name="passwordconfirm" value="${memberartistvo.amember_pass}"/> 
						<input type="text" class="input_form_sign d_block active_inp" placeholder="이름"
							name="amember_name" disabled value="${memberartistvo.amember_name}"/> 
						<input type="text" class="input_form_sign d_block active_inp"
							placeholder="핸드폰번호('-'제외)" name="amember_phone" value="${memberartistvo.amember_phone}"/> 
						<input type="text" class="input_form_sign d_block  active_inp"
							placeholder="전공" name="amember_major" value="${memberartistvo.amember_major}"/>
					</div>
					<div class="cont_btn">
						<button type="submit" class="btn_sign">수정하기</button>

					</div>

				</form>
			</div>

		</div>


	</div>
</body>
</html>