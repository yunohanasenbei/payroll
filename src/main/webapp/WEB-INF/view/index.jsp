<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<h1 class="h2">直近月の出勤状況</h1>
					<div class="btn-toolbar mb-2 mb-md-0">
						<div class="btn-group mr-2">
							<button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
							<button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
						</div>
						<button type="button"
							class="btn btn-sm btn-outline-secondary dropdown-toggle">
							<span data-feather="calendar"></span> This week
						</button>
					</div>
				</div>
				<table
					class="work table table-hover table-responsive text-center table-bordered text-align">
					<thead>
						<tr>
							<th scope="col">日付</th>
							<th colspan="2"><a href="">10/04</a></th>
							<th colspan="2"><a href="">10/05</a></th>
							<th colspan="2"><a href="">10/05</a></th>
						</tr>
						<tr class="table-sm">
							<th scope="col">出退勤</th>
							<th scope="col">出勤</th>
							<th scope="col">退勤</th>
							<th scope="col">出勤</th>
							<th scope="col">退勤</th>
							<th scope="col">出勤</th>
							<th scope="col">退勤</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="nowrap" scope="row"><button type="button"
									class="btn btn-primary">山田 太郎</button></th>
							<td>8：00</td>
							<td>17：00</td>
							<td>8：00</td>
							<td>17：00</td>
							<td>8:00</td>
							<td>13:00</td>
						</tr>
						<tr>
							<th class="nowrap" scope="row"><button type="button"
									class="btn btn-primary">田中さとこ</button></th>
							<td>8：00</td>
							<td>17：00</td>
							<td>8：00</td>
							<td>17：00</td>
							<td>8:00</td>
							<td>13:00</td>
						</tr>
						<tr>
							<th class="nowrap" scope="row"><button type="button"
									class="btn btn-primary">伊藤あさこ</button></th>
							<td>8：00</td>
							<td>17：00</td>
							<td>8：00</td>
							<td>17：00</td>
							<td>8:00</td>
							<td>13:00</td>
						</tr>
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
		crossorigin="anonymous">
	</script>
	<script>
  window.jQuery || document.write('<script src="/docs/4.5/assets/js/vendor/jquery-slim.min.js">
	')
  </script>

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
