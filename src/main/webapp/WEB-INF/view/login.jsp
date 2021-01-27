<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<link href="css/signin.css" rel="stylesheet" />
<link href="css/dashboard.css" rel="stylesheet">
</head>
<body>
	<a id="skippy" class="sr-only sr-only-focusable" href="#content">
		<div class="container">
			<span class="skiplink-text">Skip to main content</span>
		</div>
	</a>

	<nav
		class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
		<!-- <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Company name</a> -->
		<a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Payroll</a>
	</nav>

	<div class="container-fluid">
		<div class="row">
			    <nav class="col-md-2 d-none d-md-block bg-light sidebar">
    </nav>
			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

				<!-- <h2>Section title</h2> -->
				<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">ログイン</h1>
				</div>

				<form:form class="form-signin" action="" method="post" modelAttribute="admin" >
					<form:errors path="loginId"/>
					<label for="inputId" class="sr-only">Login ID</label>
					<form:input type="text" path="loginId" class="form-control"
						placeholder="Login ID" />
						<br>
					<label for="inputPassword" class="sr-only">Password</label>
					<form:input type="password" path="loginPass" class="form-control"
						placeholder="Password" />
					<br>
					<div class="checkbox mb-3">
						<label> <input type="checkbox" value="remember-me">
							Remember me
						</label>
					</div>
					<button class="btn btn-primary " type="submit">ログイン</button>
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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous">
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
