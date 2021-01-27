<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
							<a type="button" class="btn  btn-outline-secondary"
								 href="workerAdd">新規登録</a>
						</div>
					</c:if>
					</div>
				</div>
				<table
					class="work table table-hover table-responsive text-center text-align">
					<thead class=" table-bordered ">
						<tr>
							<th scope="col">従業員ID</th>
							<th scope="col">従業員名</th>
							<th scope="col">社員分類</th>
							<th scope="col">時給</th>
							<th colspan="2" >操作</th>
						</tr>
					</thead>
					<tbody class=" table-bordered ">
						<c:forEach var="worker" items="${workerList}">
							<tr>
								<td><c:out value="${worker.workerId}" /></td>
								<td><c:out value="${worker.name}" /></td>
								<td><c:out value="${worker.workerClass}" /></td>
								<td><c:out value="${worker.wageh}" /></td>
								<td><a type="button" class="btn-xs btn-info rounded p-1" href="worker<c:out value="${worker.workerId}" />"><small>詳細表示</small></a></td>
								<td><a type="button" class="btn-xs btn-info rounded p-1" href="workerReg<c:out value="${worker.workerId}" />" id="edit"><small>編集</small></a></td>
							</tr>
						</c:forEach>
					</tbody>
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
