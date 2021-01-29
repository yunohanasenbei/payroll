<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<nav
	class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
	<!-- <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Company name</a> -->
	<a class="navbar-brand col-sm-3 col-md-2 mr-0" href=
	<c:choose>
	<c:when test="${!empty admin}">"index"</c:when>
	<c:otherwise>"timeSheet<c:out value="${workerId}" />"</c:otherwise>
	</c:choose>
	>Payroll</a>
	<ul class="navbar-nav px-3 list-group-horizontal">
	<li class="nav-item text-nowrap ">
			<!-- <a class="nav-link" href="#">Sign out</a> -->
			<a href="about"><button type="button" class="btn btn-sm btn-outline-secondary">About Site</button></a>
		</li>
		<li>　</li>
		<li class="nav-item text-nowrap">
			<!-- <a class="nav-link" href="#">Sign out</a> -->
			<a href="logout"><button type="button" class="btn btn-sm btn-outline-secondary">Singn out</button></a>
		</li>
	</ul>
</nav>
