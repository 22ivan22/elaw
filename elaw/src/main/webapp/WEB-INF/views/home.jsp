<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page pageEncoding="UTF-8"%>
<html ng-app="MyApp">
<head>

<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.11/angular.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.11/angular-animate.min.js"></script>
<title>Home</title>
<style>


.sample-show-hide {
  padding:10px;
  border:1px solid black;
  background:white;
}

.sample-show-hide {
  -webkit-transition:all linear 0.5s;
  transition:all linear 0.5s;
}

.sample-show-hide.ng-hide {
  opacity:0;
}



</style>
<script type="text/javascript">
      //replace this with whatever your module ends up being
      var myApp = angular.module('MyApp', ['ngAnimate']);


    </script>


</head>
<body>
	<h1>Hello world!

	</h1>
	<h2> Primjer 1. AngularJS</h2>
	<div ng-app="">

		<p>Upiši nešto:</p>
		<p>
			Nešto: <input type="text" ng-model="name" value="John">
		</p>
		<p ng-bind="name"></p>
	</div>


<h2> Primjer 2. AngularJS - Animation</h2>
<div ng-init="checked=true">
  <label>
    <input type="checkbox" ng-model="checked" style="float:left; margin-right:10px;"> Treba se obavezno sakriti
  </label>
  <div class="check-element sample-show-hide" ng-show="checked" style="clear:both;">
    Sakrij me... :)
  </div>
</div>





</body>
</html>
