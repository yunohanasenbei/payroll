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
					<h1 class="h2">ABOUT</h1>

				</div>
				<p>このシステムはタイムカード管理の勤怠情報を入力し、<br>
					勤務時間情報をまとめ、ひと月の給与に反映される情報を見やすくすることを目標としています。</p>

				<p>【使用対象者（ペルソナ）】<br>
				小規模（従業員数10～20未満）でタイムカードで打刻を管理している企業 <br>
				PC操作に慣れていない方を想定しているため、シンプルに最低限の機能を掲載しています。
				</p>
				<p>【機能】<br>
				ログインシステム：管理者と従業員で権限の違いがあり、見れる画面と見れない画面があります</p>

				<p>【ログイン権限について】<br>
					管理者：すべての従業員の情報を確認でき、入力情報を編集/登録できます。<br>
					従業員：自分の登録済みの勤怠情報、給与設定、payrollを確認することができます。</p>
				<br>
				<h3>サイトマップ</h3>
				<table class="table table-bordered text-center align-middle">
					<tr class="table-info">
						<th>ページ</th>
						<th>ページ内容</th>
						<th>従業員</th>
						<th>管理者</th>
					</tr>
					<tr class="table-dark">
						<th>出勤状況</th>
						<td>全従業員の直近1か月の勤怠情報</td>
						<td>×</td>
						<td>〇</td>
					</tr>
					<tr>
						<th>出勤詳細（日別）</th>
						<td>日別の全従業員の直近１か月の勤怠情報</td>
						<td>×</td>
						<td>〇</td>
					</tr>
					<tr>
						<th>出勤詳細</th>
						<td>従業員一人一人の直近１か月の勤怠情報</td>
						<td>〇<br>本人情報の閲覧のみ</td>
						<td>〇<br>登録/編集</td>
					</tr>
					<tr class="table-dark">
						<th>payroll</th>
						<td>ひと月の勤務時間から残業/有給などの計算を含めた給与情報</td>
						<td>〇<br>本人情報の閲覧のみ</td>
						<td>〇</td>
					</tr>
					<tr class="table-dark">
						<th>有給情報</th>
						<td>従業員の有給情報</td>
						<td>〇<br>本人情報の閲覧のみ</td>
						<td>〇</td>
					</tr>
					<tr>
						<th>従業員情報</th>
						<td>従業員ごとの給与設定の詳細</td>
						<td>〇<br>本人情報の閲覧のみ</td>
						<td>〇<br>登録/編集</td>
					</tr>
					<tr>
						<th>会社情報</th>
						<td>会社ごとの設定</td>
						<td>×</td>
						<td>〇<br>登録/編集</td>
					</tr>
				</table>
				<p><small>※グレーアウトされているページは開発中です</small></p>
				<p>【今後掲載予定の機能】<br>
				・CSV登録機能<br>
				・日付選択機能<br>
				・バリデーション</p>
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
