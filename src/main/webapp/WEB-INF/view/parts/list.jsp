<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

    <nav class="col-md-2 d-none d-md-block bg-light sidebar">
      <div class="sidebar-sticky">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" href="index">
              <span data-feather="home"></span>
              <!-- Dashboard <span class="sr-only">(current)</span> -->
              出勤状況 <span class="sr-only">(現在位置)</span>
            </a>
          </li>
              <c:if test="${!empty admin}">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="calendar"></span>
              <!-- Orders -->
              出勤詳細(日別)
            </a>
          </li>
          </c:if>
          <li class="nav-item">
            <a class="nav-link" href="timeSheet<c:out value="${workerId}" />">
              <span data-feather="users"></span>
              <!-- Products -->
              出勤詳細
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              <!-- Customers -->
              Payroll情報
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="sun"></span>
              <!-- Integrations -->
              有給情報
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="workerList">
              <span data-feather="user-plus"></span>
              <!-- Reports -->
              従業員情報
            </a>
          </li>
          <c:if test="${!empty admin}">
          <li class="nav-item">
            <a class="nav-link" href="companyReg">
              <span data-feather="tool"></span>
              <!-- Integrations -->
              会社情報
            </a>
          </li>
          </c:if>
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
          <!-- <span>Saved reports</span> -->
          <span>CSVアップロード</span>
          <a class="d-flex align-items-center text-muted" href="#">
            <span data-feather="arrow-up-circle"></span>
          </a>
        </h6>
        <ul class="nav flex-column mb-2">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              <!-- Current month -->
              勤怠情報
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              <!-- Last quarter -->
              従業員情報
            </a>
          </li>
        </ul>
      </div>
    </nav>