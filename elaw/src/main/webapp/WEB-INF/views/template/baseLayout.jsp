<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>E-law</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">


<!-- Core CSS -->
<link rel="stylesheet" media="all" type="text/css"
	href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>">
<link rel="stylesheet" media="all" type="text/css"
	href="<c:url value="/resources/bootstrap/css/bootstrap-theme.min.css"/>">
<link rel="stylesheet" media="all" type="text/css"
	href="<c:url value="/resources/bootstrap/css/sticky-footer-navbar.css"/>">
<link rel="stylesheet" media="all" type="text/css"
	href="<c:url value="/resources/dateTimePicker/css/bootstrap-datetimepicker.css"/>">
<link rel="stylesheet" media="all" type="text/css"
	href="<c:url value="/resources/fontAwesome/css/font-awesome.min.css"/>">
<link rel="stylesheet" media="all" type="text/css"
	href="<c:url value="/resources/bootstrap/css/bootstrap-select.css"/>">
<link rel="stylesheet" media="all" type="text/css"
	href="<c:url value="/resources/dateTimePicker/css/bootstrap-datetimepicker.css"/>">
<link rel="stylesheet" media="all" type="text/css"
	href="<c:url value="/resources/bootstrap/css//navbar-elaw.css"/>">
<link rel="stylesheet" media="all" type="text/css"
	href="<c:url value="/resources/select2/css/select2.css"/>">



<!-- Core Scripts -->
<script type="text/javascript"
	src="<c:url value="/resources/jQuery/js/jquery-2.1.3.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/moment.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>

<script type="text/javascript"
	src="<c:url value="/resources/bootstrap/js/bootstrap-select.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/dateTimePicker/js/bootstrap-datetimepicker.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/dateTimePicker/dateTimePicker.hr.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/bootstrap/js/collapse.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/bootstrap/js/transition.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/angularJ/angular.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/angularJ/angular-animate.min.js"/>"></script>

<script type="text/javascript"
	src="<c:url value="/resources/angularJ/ui-bootstrap-tpls-0.12.1.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/select2/js/select2.full.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/select2/js/select2.amd.full.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/select2/js/i18n/hr.js"/>"></script>


</head>

<body>
	<tiles:insertAttribute name="header" />

	<div class="container-fluid">

		<div class="row-fluid">
			<div class="col-md-3">
				<tiles:importAttribute name="menuItem" scope="session" />
				<tiles:insertAttribute name="menu" />
			</div>
			<div class="col-md-9">
				<tiles:insertAttribute name="content" />
			</div>
		</div>
	</div>


</body>
<tiles:insertAttribute name="footer" />
</html>
