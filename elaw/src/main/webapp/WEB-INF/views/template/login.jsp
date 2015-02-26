<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<%@page session="true"%>

<html ng-app="login">

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
	href="<c:url value="/resources/bootstrap/css/style.css"/>">

<script type="text/javascript"
	src="<c:url value="/resources/angularJ/angular.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/angularJ/angular-animate.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/angularJ/ui-bootstrap-tpls-0.12.1.min.js"/>"></script>


<c:url var="addAction" value="/login"></c:url>

<c:url var="loginAction"
	value="/auth/login_check?targetUrl=${targetUrl}"></c:url>

<script>
angular.module('login', [ 'ui.bootstrap' ]);
	angular
			.module('ui.bootstrap.alert')
			.controller(
					'AlertCtrl',
					function($scope) {
						$scope.alerts = [
											
												   { }
												   
											];

						$scope.addAlert = function() {
							$scope.alerts.push({
								msg : 'Another alert!'
							});
						};

						$scope.closeAlert = function(index) {
							$scope.alerts.splice(index, 1);
						};
					});
	angular.module('login', [ 'ui.bootstrap' ]);
	
</script>

<!-- <div ng-controller="AlertCtrl">
	<alert ng-repeat="alert in alerts" type="{{alert.type}}"
		close="closeAlert($index)">{{alert.msg}}</alert>
	<button class='btn btn-default' ng-click="addAlert()">Add
		Alert</button>
</div>
 -->
<div class="container">



	<sf:form class="form-signin" modelAttribute="loginNew"
		action="${loginAction}" method="post">

		<h2 class="form-signin-heading">Elaw d.o.o.</h2>
		<c:if test="${not empty error}">
				
			<div ng-controller="AlertCtrl">
				<alert ng-repeat="alert in alerts" type="danger"
					close="closeAlert($index)">${error}</alert>
			</div>

		</c:if>
		<c:if test="${not empty msg}">
			<div ng-controller="AlertCtrl">
				<alert ng-repeat="alert in alerts" type="success"
					close="closeAlert($index)">${msg}</alert>
			</div>

		</c:if>
		<div classs="form-group">
			<sf:label for="inputPerspective" path="perspective">Odabir perspektive</sf:label>
			<sf:select class="form-control" path="perspective">
				<sf:option value="-" label="--Odabir perspektive--"/>  
                <sf:options items="${perspectiveList}" itemValue="id" itemLabel="name"/>  

			</sf:select>
		</div>

		<br />
		<div class="form-group">

			<sf:label for="inputEmail" path="username">Korisničko ime</sf:label>
			<sf:input type="email" id="inputEmail" class="form-control"
				path="username" name="username" placeholder="Korisničko ime"
				required="required" autofocus="autofocus" />

		</div>
		<div class="form-group">
			<sf:label for="inputPassword" path="password">Lozinka</sf:label>
			<sf:input type="password" id="inputPassword" class="form-control"
				path="password" placeholder="Lozinka" required="required"
				autofocus="autofocus" name="password" />
		</div>



		<sf:button class="btn btn-lg btn-primary btn-block" type="submit">Prijavi se</sf:button>




		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</sf:form>

</div>
<!-- /container -->
</html>
