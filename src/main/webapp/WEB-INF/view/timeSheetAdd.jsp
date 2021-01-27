<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ja" >
  <head>
    <meta charset="UTF-8">
    <title>userRegistration</title>
    <link
    rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
    crossorigin="anonymous"/>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP&display=swap" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/dashboard.css" rel="stylesheet">
  </head>
  <body >
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
					<h1 class="h2">出勤詳細従業員別</h1>
					<div class="btn-toolbar mb-2 mb-md-0">
					<c:if test="${!empty admin}">
						<div class="btn-group mr-2">
							<a type="button" class="btn  btn-outline-warning"
								 href="timeSheetAdd<c:out value="${worker.workerId}" />">一括更新</a>
						</div>
					</c:if>
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

				<table class="work table table-hover table-responsive text-center text-align sticky_table">
					<thead class=" table-bordered ">
						<tr>
							<th scope="col">日付</th>
							<th scope="col">出勤時刻</th>
							<th scope="col">退勤時刻</th>
							<th scope="col">休憩時間</th>
							<th scope="col">実労働時間</th>
							<th scope="col">有給取得</th>
							<th scope="col">操作</th>
						</tr>
					</thead>

					<tbody class=" table-bordered ">
					<c:forEach var="m" items="${month}" varStatus="count">
						<form action="" method="post">
						<input type="hidden" value="${m.timeSheet.num}">
						<input type="hidden" value="${count.count}">
						<tr>
							<th class="nowrap" scope="row"><fmt:formatDate value="${m.calcDay}" pattern="y年M月d日 (E)" /></th>
							<td><input data-count="${count.count}" type="time"  value="<fmt:formatDate value="${m.timeSheet.begin}" pattern="HH:mm" />"></td>
							<td><input data-count="${count.count}"  type="time"  value="<fmt:formatDate value="${m.timeSheet.finish}" pattern="HH:mm" />"></td>
							<td><input data-count="${count.count}"  type="time"  value="<fmt:formatDate value="${m.timeSheet.breakTime}" pattern="HH:mm" />"></td>
							<td><input data-count="${count.count}"  type="time"  value="<fmt:formatDate value="${m.timeSheet.workingH}" pattern="HH:mm" />" ></td>
							<td>
							<input data-count="${count.count}" type="checkbox" <c:if test="${m.timeSheet.paidLeaveNum == 1 }">checked=checked</c:if>>
							</td>
								<td><input type="submit" class="btn-xs btn-warning rounded p-1 edit${count.count}" href="workerReg<c:out value="${worker.workerId}" />"  value="更新" disabled/></td>
						</tr>
						</form>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script>
  window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')
</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>

<!--有給がチェックされたら時間を入力できなくなる-->
<script >
$('input[type="checkbox"]').change(function(){
	const selector = '.edit' + $(this).attr('data-count');
	console.log(selector);
	$(selector).prop("disabled", false);

	if($(this).prop("checked")){
		$(this).parent().parent().find('input[type="time"]').prop("disabled", true);
	}else {
		console.log(11);
		$(this).parent().parent().find('input[type="time"]').prop("disabled", false);
	}

});
</script>



<!--入力したら有効になるリンクボタン-->
<script >
$('input[type="time"]').change(function(){
	const selector = '.edit' + $(this).attr('data-count');
	console.log(selector);
	$(selector).prop("disabled", false);
});
</script>




<!--ファイルアップロード枠-->
<script>
$('.custom-file-input').on('change', handleFileSelect);
function handleFileSelect(evt) {
		$('#preview').remove();// 繰り返し実行時の処理
		$(this).parents('.input-group').after('<div id="preview"></div>');

  var files = evt.target.files;


	for (var i = 0, f; f = files[i]; i++) {

		var reader = new FileReader();

		reader.onload = (function(theFile) {
			return function(e) {
				if (theFile.type.match('image.*')) {
					var $html = ['<div class="d-inline-block mr-1 mt-1"><img class="img-thumbnail" src="', e.target.result,'" title="', escape(theFile.name), '" style="height:100px;" /><div class="small text-muted text-center">', escape(theFile.name),'</div></div>'].join('');// 画像では画像のプレビューとファイル名の表示
				} else {
					var $html = ['<div class="d-inline-block mr-1"><span class="small">', escape(theFile.name),'</span></div>'].join('');//画像以外はファイル名のみの表示
				}

				$('#preview').append($html);
			};
		})(f);

		reader.readAsDataURL(f);
	}
	$(this).next('.custom-file-label').html(+ files.length + '個のファイルを選択しました');
}

//ファイルの取消
$('.reset').click(function(){
	$(this).parent().prev().children('.custom-file-label').html('ファイル選択...');
	$('#preview').remove();
	$('.custom-file-input').val('');
})



</script>

</body>
</html>
