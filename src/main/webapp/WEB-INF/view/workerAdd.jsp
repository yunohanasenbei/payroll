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
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">従業員情報</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group mr-2">
            <button type="button" class="btn  btn-outline-secondary" formmethod="get" name="new">新規登録</button>
            <!-- セッションにアドミン権限あれば表示 -->
            <button type="button" class="btn  btn-outline-secondary" onclick="location.href='workerList'">従業員一覧表示</button>
            <!-- セッションにアドミン権限あれば表示 -->
          </div>
        </div>
      </div>
      <form:form action="" method="post" modelAttribute="worker">
        <div class="form-group">
          <label for="name">名前</label>
          <form:input path="name" type="text" class="form-control" id="name"/>
          <small id="emailHelp" class="form-text text-muted">苗字と氏名の間に半角スペースを入れてください。</small>
        </div>

        <label for="name">【従業員タイプ】</label>
        <div class="form-group form-check">
          <label class="form-check-label" >
        	<form:radiobutton path="workerClass" value="1" />
            社員（固定給のみ）
          </label>
        </div>
        <div class="form-group form-check">
          <label class="form-check-label">
        	<form:radiobutton path="workerClass" value="2"/>
            社員（時給換算あり）
          </label>
        </div>
        <div class="form-group form-check">
          <label class="form-check-label">
        	<form:radiobutton path="workerClass" value="3" />
            アルバイト
          </label>
        </div>
        <div class="form-group">
          <label for="wageH">時給</label>
          <form:input path="wageh" type="number" class="form-control" id="wageH" step="10" min="0"/>
        </div>
        <div class="form-group">
          <label for="basicWorking">所定労働時間</label>
          <form:input path="basicWorkingh" type="number" class="form-control" id="basicWorking" />
          <small id="emailHelp" class="form-text text-muted">所定労働時間がない場合は空白</small>
        </div>
        <div class="form-group">
          <label for="basicBreak">固定休憩時間</label>
          <form:input path="basicBreak" type="number" class="form-control" id="basicBreak"  min="0" />
        </div>
        <div class="form-group">
          <label for="travelCost">交通費（都度支給分）</label>
          <form:input path="travelCost" type="number" class="form-control" id="travelCost" min="0"/>
          <small id="emailHelp" class="form-text text-muted">ここに入力した金額は出勤日数とかけられます</small>
        </div>
        <div class="form-group">
          <label for="travelCostMonth">交通費（月）</label>
          <form:input path="travelCostMonth"  type="number" class="form-control" id="travelCostMonth" min="0" />
          <small id="emailHelp" class="form-text text-muted">月額での計算の場合はこちらに入力してください</small>
        </div>

        <!-- セッションにアドミン権限あれば表示 -->
        <div class="form-group form-check">
          <form:checkbox path="admin" class="form-check-input" id="admin" value="1"/>
          <label class="form-check-label" for="admin">ユーザー登録権限を付与</label>
        </div>
        <!-- セッションにアドミン権限あれば表示 -->
        <input type="submit" class="btn btn-primary" value="<c:out value="${action}" />">
      </form:form>
    </main>
  </div>
</div>

<!-- Icons -->
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
  feather.replace()
</script>

<!-- Graphs -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script>
  window.jQuery || document.write('<script src="/docs/4.5/assets/js/vendor/jquery-slim.min.js"></script>')
</script><script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script><script src="/docs/4.5/assets/js/vendor/anchor.min.js"></script>
<script src="/docs/4.5/assets/js/vendor/clipboard.min.js"></script>
<script src="/docs/4.5/assets/js/vendor/bs-custom-file-input.min.js"></script>
<script src="/docs/4.5/assets/js/src/application.js"></script>
<script src="/docs/4.5/assets/js/src/search.js"></script>
<script src="/docs/4.5/assets/js/src/ie-emulation-modes-warning.js"></script>
  </body>
</html>
