<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%-- パスをコンテキストルートを含めた形に変換 --%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>Index</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous" />
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+JP&display=swap"
	rel="stylesheet">
<link href="css/style.css" rel="stylesheet" />
<link href="css/dashboard.css" rel="stylesheet">
</head>
<body>
	<a id="skippy" class="sr-only sr-only-focusable" href="#content">
		<div class="container">
			<span class="skiplink-text">Skip to main content</span>
		</div>
	</a>
	<c:import url="parts/nav.jsp" />
	<div class="container-fluid">
		<div class="row">
			<c:import url="parts/list.jsp" />

			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

				<!-- <h2>Section title</h2> -->
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">従業員情報</h1>
					<div class="btn-toolbar mb-2 mb-md-0">
							<c:if test="${!empty admin}">
						<div class="btn-group mr-2">
								<!-- セッションにアドミン権限あれば表示 -->
								<button type="button" class="btn  btn-outline-secondary"
									onclick="location.href='workerReg<c:out value="${worker.workerId}" />'">編集</button>
								<button type="button" class="btn  btn-outline-secondary"
									onclick="location.href='workerList'">従業員一覧表示</button>
								<!-- セッションにアドミン権限あれば表示 -->
						</div>
							</c:if>
					</div>
				</div>
				<table
					class="work table table-hover table-responsive text-center text-align">
					<thead>
						<tr class="table-bordered">
							<th scope="col">名前</th>
							<td bgcolor="white"><c:out value="${worker.name}" /></td>
						</tr>
					</thead>
					<thead>
						<tr class="table-bordered">
							<th scope="col">従業員タイプ</th>
							<td bgcolor="white"><c:out value="${worker.className}" /></td>
						</tr>
					</thead>
					<thead>
						<tr class="table-bordered">
							<th scope="col">時給</th>
							<td bgcolor="white"><c:out value="${worker.wageh}" />円</td>
						</tr>
					</thead>
					<thead>
						<tr class="table-bordered">
							<th scope="col">所定労働時間</th>
							<td bgcolor="white"><c:out value="${worker.basicWorkingh}" />時間</td>
						</tr>
					</thead>
					<thead>
						<tr class="table-bordered">
							<th scope="col">固定休憩時間</th>
							<td bgcolor="white"><c:out value="${worker.basicBreak}" />時間</td>
						</tr>
					</thead>
					<thead>
						<tr class="table-bordered">
							<th scope="col">交通費（都度支給分）</th>
							<td bgcolor="white"><c:out value="${worker.travelCost}" />円</td>
						</tr>
					</thead>
					<thead>
						<tr class="table-bordered">
							<th scope="col">交通費（月）</th>
							<td bgcolor="white"><c:out value="${worker.travelCostMonth}" />円</td>
						</tr>
					</thead>
				</table>
			</main>
		</div>
	</div>

	<!-- Icons -->
	<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
	<script>
  feather.replace()
</script>

	<!-- Graphs -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
	<script src="/docs/4.5/assets/js/vendor/anchor.min.js"></script>
	<script src="/docs/4.5/assets/js/vendor/clipboard.min.js"></script>
	<script src="/docs/4.5/assets/js/vendor/bs-custom-file-input.min.js"></script>
	<script src="/docs/4.5/assets/js/src/application.js"></script>
	<script src="/docs/4.5/assets/js/src/search.js"></script>
	<script src="/docs/4.5/assets/js/src/ie-emulation-modes-warning.js"></script>
</body>
</html>
