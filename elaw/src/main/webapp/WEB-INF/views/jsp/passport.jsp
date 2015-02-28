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
    <h3 class="panel-title">Putovnica</h3>
  </div>
  <div class="panel-body">
	
	<form>
		
	<div class="row">
		  <div class="form-group col-md-3">
		    <label for="passportNumber" class="control-label">Broj putovnice</label>
		    <sf:input path="passportNumber" type="text" class="form-control"/>
		  </div>
	</div>
	<div class="row">
		<div class="form-group col-md-3">
			<label class="control-label">Validnost putovnice</label>
				<div class="input-group input-group-sm">
					<span class="input-group-addon">Od</span>
					<sf:input path="passportValidFrom" type="text" data-date-format="DD.MM.YYYY" class="form-control" id="passportValidFrom"/>
					<span class="input-group-addon">Do</span>
					<sf:input path="passportValidTo" type="text" data-date-format="DD.MM.YYYY" class="form-control" id="passportValidTo" />
				</div>
		</div>
	</div>
	
	
	</form>
  </div>
</div>

<script>

$(function () {

	$('#passportValidFrom').datetimepicker({language: 'hr', pickTime: false});
	$('#passportValidTo').datetimepicker({language: 'hr', pickTime: false});

	   		 
});
	
</script>

