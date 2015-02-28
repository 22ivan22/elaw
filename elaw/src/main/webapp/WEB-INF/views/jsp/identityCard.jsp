<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Osobna iskaznica</h3>
  </div>
  <div class="panel-body">
	
	<form>
		
	<div class="row">
		  <div class="form-group col-md-3">
		    <label for="identityCardNumber" class="control-label">Broj osobne iskaznice</label>
		    <sf:input path="identityCardNumber" type="text" class="form-control"/>
		  </div>
	</div>
	<div class="row">
		  <div class="form-group col-md-3">
		    <label for="identityCardIssuer" class="control-label">Izdavač</label>
		    <sf:input path="identityCardIssuer" type="text" class="form-control"/>
		 </div>
	</div>
	<div class="row">
		<div class="form-group col-md-3">
			<label class="control-label">Validnost iskaznice</label>
				<div class="input-group input-group-sm">
					<span class="input-group-addon">Od</span>
					<sf:input path="identityCardValidFrom" type="text" data-date-format="DD.MM.YYYY" class="form-control" id="identityCardValidFrom"/>
					<span class="input-group-addon">Do</span>
					<sf:input path="identityCardValidFrom" type="text" data-date-format="DD.MM.YYYY" class="form-control" id="identityCardValidTo" />
				</div>
		</div>
	</div>
	
	
	</form>
  </div>
</div>

<script>

$(function () {

	$('#identityCardValidFrom').datetimepicker({language: 'hr', pickTime: false});
	$('#identityCardValidTo').datetimepicker({language: 'hr', pickTime: false});

	   		 
});
	
</script>

