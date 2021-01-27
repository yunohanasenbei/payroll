<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">会社情報</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group mr-2">
            <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
          </div>
          <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
            <span data-feather="calendar"></span>
            This week
          </button>
        </div>
      </div>
      <form:form action="" method="post" modelAttribute="company">
        <div class="form-group">
          <label for="name">会社名</label>
        <form:input type="text" class="form-control" path="companyName" />
        </div>

        <label for="name">【有給取得時の給与計算方法】</label>
        <div class="form-group form-check">
        <form:radiobutton path="paidLeaveCalculationId" value="0"/>
          <label class="form-check-label" for="paidLeaveCalculation0">
            通常の時給から換算
          </label>
        </div>
        <div class="form-group form-check">
          <form:radiobutton path="paidLeaveCalculationId" value="1"/>
          <label class="form-check-label" for="paidLeaveCalculation1">
            平均賃金(過去3か月分の賃金総額 / 過去3か月分の総日数)
          </label>
        </div>
        <div class="form-group">
          <label for="name">毎月の締め日</label>
        <form:input type="number" min="1" max="31" class="form-control" path="companyDeadline" />
        </div>
        <div class="form-group file-width">
          <label for="file">企業アイコン</label>
          <small class="form-text text-muted">ファイルサイズは1M以下とし、正方形に調整してください。</small>
          <div id="file" class="input-group">
            <div class="custom-file">
              <input type="file" id="cutomfile" class="custom-file-input" name="cutomfile[]" path="" />
              <label class="custom-file-label" for="customfile" data-browse="参照">ファイル選択...</label>
            </div>
            <div class="input-group-append">
              <button type="button" class="btn btn-outline-secondary reset">取消</button>
            </div>
          </div>
        </div>
        <button type="submit" class="btn btn-primary">更新</button>
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
  window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')
</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
<script src="/docs/4.5/assets/js/vendor/anchor.min.js"></script>
<script src="/docs/4.5/assets/js/vendor/clipboard.min.js"></script>
<script src="/docs/4.5/assets/js/vendor/bs-custom-file-input.min.js"></script>
<script src="/docs/4.5/assets/js/src/application.js"></script>
<script src="/docs/4.5/assets/js/src/search.js"></script>
<script src="/docs/4.5/assets/js/src/ie-emulation-modes-warning.js"></script>

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
