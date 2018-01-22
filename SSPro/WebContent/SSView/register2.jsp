<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<!-- 모바일 최적화: 부트스트랩은 한번의 개발로 PC, 타블렛, 스마트폰 등
        다양한 기기에서 작동할수 있도록 만들어진 툴-->
<!-- Bootsrap CDN -->
  <link rel="stylesheet" type="text/css" href="/SSPro/css/font.css">
  <link rel="stylesheet" type="text/css" href="/SSPro/css/nav2.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/register2.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/SSPro/js/register2.js"></script>
</head>

<body>
	
  <nav class="navbar navbar-fixed-top" id="top_navbar">
   <div class="container">
      <div class="navbar-header">
         <a href=""> <img src="/SSPro/img/logo-p.png"
            alt="Section Share">
         </a>
      </div>
      <!-- 메뉴 모음 -->
      <ul class="nav navbar-nav navbar-right" id="top_navbar-nav">
         <!-- <li class="active"><a href="#">Main</a></li> -->
         <li><input type="checkbox" id="drawer-toggle" name="drawer-toggle"/>
         <label for="drawer-toggle" id="drawer-toggle-label"></label>
   <nav id="drawer">
      <ul><li><a href="#">공간대여게시글 작성</a></li>
         <li><a href="#">내정보수정</a></li>
         <li><a href="#">요청 현황</a></li>
         <li><a href="#">서비스 정보</a></li>
         <li><a href="#">로그아웃</a></li>
      </ul>
   </nav>

         </li>
      </ul>
   </div>
   </nav>
   
	<div class="py-5">
		<div class="container">
			<div class="row">
				<div class="col-md-6 bor">
					<h1 class="bodytxt2 hanguel">
						현지님 안녕하세요! 회원님의 <br>공간 등록을 도와드리겠습니다.
					</h1>

					<br> <strong>2단계</strong> <br> <span>회원님의 공간 유형은
						무엇인가요?</span> <br> <br>
					<form class="form-horizontal"
						action="spacepost/upload?action=upload1" method="post"
						enctype="multipart/form-data">
						<input type="hidden">
						<div class="col-xs-9">

							<div class="form-group">
								<label class="form-label" for="subject">상호명</label> <input
									type="text" class="form-control" id="shopname" name="shopname"
									placeholder="상호명" tabindex="3">
							</div>

							<div class="form-group">
								<label class="form-label" for="subject">주소</label> <input
									type="text" class="form-control" id="addr" name="addr"
									placeholder="주소" tabindex="3">
							</div>
							<div class="form-group">
								<label class="form-label" for="subject">공간 사이즈</label> <input
									type="text" class="form-control" id="size" name="size"
									placeholder="공간 사이즈" tabindex="3">
							</div>
							<div class="form-group">
								<label class="form-label" for="subject">매장번호</label> <input
									type="text" class="form-control" id="phone" name="phone"
									placeholder="매장번호" tabindex="3">
							</div>
							<div class="form-group">
								<label class="form-label" for="subject">대여 시작일</label> <input
									type="text" class="form-control" id="startdate"
									name="startdate" placeholder="대여 시작일" tabindex="3">
							</div>
							<div class="form-group">
								<label class="form-label" for="subject">대여 마감일</label> <input
									type="text" class="form-control" id="finishdate"
									name="finishdate" placeholder="대여 마감일" tabindex="3">
							</div>

							<div class="form-group">
								<label class="form-label" for="subject">공간 소개</label>
								<textarea class="form-control" rows="5" id="memo" name="memo"></textarea>
							</div>
							
							<div class="form-group">
								<label class="form-label" for="subject">해시태그(3개 ','로 구분해주세요)</label>
								<textarea class="form-control" rows="5" id="hashtag" name="hashtag"></textarea>
							</div>

						</div>

						<div class="row"></div>
						<br>
						<button class="button" data-toggle="collapse"
							href="#collapseExample" aria-expanded="false"
							aria-controls="collapseExample">
							<span class="span">계속</span>
						</button>
				</div>
				<div class="col-md-6 collapse" id="collapseExample">

					<br> <strong>3단계</strong><br> <span>대표 이미지 사진을
						선택해주세요.</span><br> <br>

					<div class="upload-wrap">
						<div class="uploadpreview 01"></div>
						<input id="image1" type="file" name="image1">
					</div>
					<div class="upload-wrap">
						<div class="uploadpreview 02"></div>
						<input id="image2" type="file" name="image2">
					</div>
					<div class="upload-wrap">
						<div class="uploadpreview 03"></div>
						<input id="image3" type="file" name="image3">
					</div>

					<script src="/SSPro/js/register2.js"></script>

					<div class="row"></div>
					<br>
					<button class="button" type="submit" data-toggle="modal"
						data-target="#exampleModal" data-whatever="@getbootstrap">
						<span class="span">등록</span>
					</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<br>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="exampleModalLabel">Congreturations!</h4>
				</div>
				<div class="modal-body">축하합니다! 등록이 완료되었습니다!</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Home</button>
					<button type="button" class="btn btn-primary">내 게시글 보러가기</button>
				</div>
			</div>
		</div>
	</div>
<footer id="footer">
  <div class="lower-footer">
    <div class="container-footer">
      <div class="wrapper left-wrapper">
        <div class="header">
          <img class="logo" src="/SSPro/img/logo-w.png" alt="/SSPro/img/logo-w.png" />
        </div>

        <div class="content">
          © 2014-2016 · SectionShare(주), All Rights Reserved<br>
          대표자 : 서초동벨리 사업자 등록번호 : 107 - 87 - 79911<br>
          서울시 강남구 봉은사로 213 센트럴타워 14층<br>
          대표번호 : 02-2018-3700<br>
		  입주 문의 : 02-2018-3703<br>
		  임대/투자 문의 : 02-2018-3712<br>
		  홍보/제휴 문의 : 02-2018-3715<br>
        </div>
      </div>

    </div>
  </div>
</footer>
</body>

</html>