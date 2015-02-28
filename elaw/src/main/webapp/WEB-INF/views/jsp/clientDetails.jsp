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
    <h3 class="panel-title">Podaci o klijentu</h3>
  </div>
  <div class="panel-body">
	
	<form>
		
	<div class="row">
		  <div class="form-group col-md-3">
		    <label for="name" class="control-label">Ime</label>
		    <sf:input path="name" type="text" class="form-control" id="name"/>
		  </div>
	</div>
	<div class="row">
		  <div class="form-group col-md-3">
		    <label for="lastName" class="control-label">Prezime</label>
		    <sf:input path="lastName" type="text" class="form-control" id="lastName"/>
		 </div>
	</div>
	<div class="row">
		  <div class="form-group col-md-3">
		    <label for="pin" class="control-label">OIB</label>
		    <sf:input path="pin" type="text" class="form-control" id="pin"/>
		 </div>
	</div>
	<div class="row">
		<div class="form-group col-md-3">
		    <label for="dateOfBirth" class="control-label">Datum rođenja</label>
		    <div class="input-group date" id="dtpDatRod">
				<sf:input path ="dateOfBirth" type="text" data-date-format="DD.MM.YYYY" class="form-control input-sm" id="dateOfBirth" />
				<span class="input-group-addon"><span class="fa fa-calendar"></span></span> 
			</div>
		 </div>
	</div>
	
	
	</form>
  </div>
</div>

<script>

$(function () {

	$('#dateOfBirth').datetimepicker({language: 'hr', pickTime: false});

	   		 
});
	
</script>

