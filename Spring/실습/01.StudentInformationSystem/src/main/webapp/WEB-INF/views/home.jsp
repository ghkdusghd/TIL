	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스프링 레거시 시험</title>
<!-- 부트스트랩 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<style>
.container {
	position: relative;
	background-color: #F8F9FA;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px gray;
}

.container-detail {
	position: absolute;
	display: none;
	top: 0.1px; left : 700px;
	background-color: #F8F9FA;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px gray;
	left: 700px;
}

.container-result, .result-no {
	display: none;
}
</style>

<!-- ajax -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript">
//학생 정보 상세보기
function getOneStudent(num) {
	$.ajax({
		url : "${root}/getOneStudent",
		type : "get",
		data : {"num" : num},
		success : function(data) {
			$("#num").text(data.num);
			$("#name").text(data.name);
			$("#address").text(data.address);
			$("#univ").text(data.univ);
			$("#major").text(data.major);
			//학생정보 수정 버튼을 눌렀을 때 해당 학생의 데이터를 찾아오기 위해 미리 num 데이터를 전달해둔다.
			$("#update-form-button").val(data.num);
			//마찬가지로, 삭제 버튼을 눌렀을 때 해당 학생의 데이터를 찾아오기 위해 미리 num 데이터를 전달해둔다.
			$("#delete-button").val(data.num);
			
			$(".container-detail").css("display","block");
		},
		error : function() {
			alert("error");
		}
	});
}

//학생정보 수정
function getUpdateStudet(num) {
	$.ajax({
		url : "${root}/getOneStudent",
		type : "get",
		data : {"num" : num},
		success : function(data) {
			$("#update-num").val(data.num);
			$("#update-name").val(data.name);
			$("#update-address").val(data.address);
			$("#update-univ").val(data.univ);
			$("#update-major").val(data.major);
		},
		error : function() {
			alert("error");
		}
	});
}

//학생정보 삭제
function deleteStudent(num) {
	$.ajax({
		url : "${root}/deleteStudent",
		type : "get",
		data : {"num" : num},
		success : function() {
			alert("학생정보를 삭제했습니다. 새로고침 해주세요.");
			$(".container-detail").css("display","none");
		},
		error : function() {
			alert("error");
		}
	});
}

//학생정보 검색
function searchStudent() {
	let searchName = $("#search-student").val();
	$.ajax({
		url : "${root}/searchStudent",
		type : "get",
		data : {"searchName" : searchName},
		dataType : "json",
		success : function(searchList) {
			
			if($.isEmptyObject(searchList)) {
				$(".container-main").css("display","none");
				$(".container-result").css("display","none");
				$(".result-no").css("display","block");
				
			} else {
				$("#result-print").empty();
				$(".container-main").css("display","none");
				$(".result-no").css("display","none");
				$(".container-result").css("display","block");
				$.each(searchList,function(index, item) {
					str = "<tr>";
					str += "<td scope='row'>" + item.num +"</td>";
					str += "<td>" + item.name + "</td>";
					str += "<td><button type='button' class='btn btn-primary'	onclick='getOneStudent(" + item.num + ")'>자세히 보기</button></td>";
					str += "</tr>";
					$("#result-print").append(str);
				});
			}
		},
		error : function() {
			alert("error");
		}
	});
}
</script>
</head>
<body>

	<!-- 메인 페이지 -->
	<div style="margin-left: 10%; margin-top: 20px;">
		<h2 style="color: #337AB7;">학생정보 검색</h2>
	</div>
	<div class="container" style="margin-left: 10%; width: 550px;">
		<br>
		<div class="input-group mb-3">
			<input type="text" class="form-control" placeholder="이름 검색"
				id="search-student" aria-label="Recipient's username"
				aria-describedby="button-addon2"
				onkeypress="if(window.event.keyCode==13){searchStudent()}">
			<button class="btn btn-outline-secondary" type="button"
				id="button-addon2" onclick="searchStudent()">
				<i class="bi bi-search"></i>
			</button>
		</div>

		<!-- 학생정보 리스트 -->
		<div class="container-main">
			<table class="table table-hover table-light">
				<thead>
					<tr>
						<th scope="col" style="width: 100px;">번호</th>
						<th scope="col" style="width: 300px;">이름</th>
						<th scope="col" style="width: 150px;"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="student" items="${studentList }">
						<tr>
							<td scope="row">${student.num }</td>
							<td>${student.name }</td>
							<td><button type="button" class="btn btn-primary"
									onclick="getOneStudent(${student.num})">자세히 보기</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<!-- 검색결과 없음 -->
		<div class="result-no" style="text-align: center;">
			검색 결과가 없습니다. <br>
			<button type="button" class="btn btn-primary" data-bs-toggle="modal"
				data-bs-target="#staticBackdrop">학생 정보 추가</button>
		</div>

		<!-- 검색결과 있음 -->
		<div class="container-result">
			<table class="table table-hover table-light">
				<thead>
					<tr>
						<th scope="col" style="width: 100px;">번호</th>
						<th scope="col" style="width: 300px;">이름</th>
						<th scope="col" style="width: 150px;"></th>
					</tr>
				</thead>
				<tbody id="result-print">

				</tbody>
			</table>
		</div>

		<!-- 상세보기 -->
		<div class="container-detail" style="width: 500px; height: 600px;">
			<br>
			<h5>학생 정보</h5>
			<br>
			<table class="table table-hover table-light">
				<thead>
					<tr>
						<th scope="col" style="width: 150px;">칼럼명</th>
						<th scope="col" style="width: 350px;">내용</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td scope="row">학생 번호</td>
						<td><span id="num"></span></td>
					</tr>
					<tr>
						<td scope="row">학생 이름</td>
						<td><span id="name"></span></td>
					</tr>
					<tr>
						<td scope="row">거주지(동)</td>
						<td><span id="address"></span></td>
					</tr>
					<tr>
						<td scope="row">학교</td>
						<td><span id="univ"></span></td>
					</tr>
					<tr>
						<td scope="row">전공</td>
						<td><span id="major"></span></td>
					</tr>
				</tbody>
			</table>
			<div style="text-align: center;">
				<button type="button" class="btn btn-primary"
					id="update-form-button" data-bs-toggle="modal"
					data-bs-target="#updateStudent"
					onclick="getUpdateStudet(this.value)">수정</button>
				<button type="button" class="btn btn-danger" id="delete-button"
					onclick="deleteStudent(this.value)">삭제</button>
			</div>
		</div>
	</div>

	<!-- 학생정보 수정 모달창 -->
	<div class="modal fade" id="updateStudent" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">학생 정보 수정하기</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<form:form modelAttribute="student" action="${root }/updateStudent"
					method="post">
					<input type="hidden" id="update-num" name="num">
					<div class="modal-body">
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">이름</span> <input
								type="text" class="form-control" id="update-name" name="name"
								aria-label="Username" aria-describedby="basic-addon1" disabled>
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">주소(동)</span> <input
								type="text" class="form-control" id="update-address"
								name="address" aria-label="Username"
								aria-describedby="basic-addon1">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">학교명</span> <input
								type="text" class="form-control" id="update-univ" name="univ"
								aria-label="Username" aria-describedby="basic-addon1">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">전공명</span> <input
								type="text" class="form-control" id="update-major" name="major"
								aria-label="Username" aria-describedby="basic-addon1">
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-secondary">등록</button>
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">닫기</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>

	<!-- 학생정보 추가 모달창 -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="staticBackdropLabel">새로운 학생 정보 추가하기</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
				<form:form modelAttribute="student" action="${root }/insertStudent" method="post">
					<div class="modal-body">
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">이름</span> <input
								type="text" class="form-control" id="update-name" name="name"
								aria-label="Username" aria-describedby="basic-addon1">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">주소(동)</span> <input
								type="text" class="form-control" id="update-address"
								name="address" aria-label="Username"
								aria-describedby="basic-addon1">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">학교명</span> <input
								type="text" class="form-control" id="update-univ" name="univ"
								aria-label="Username" aria-describedby="basic-addon1">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">전공명</span> <input
								type="text" class="form-control" id="update-major" name="major"
								aria-label="Username" aria-describedby="basic-addon1">
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-secondary">등록</button>
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">닫기</button>
					</div>
				</form:form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>