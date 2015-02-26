<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<c:url var="addlogout" value="/logout"></c:url>
<script>

$(function () {

	$('#dtpDatKave').datetimepicker({language: 'hr', pickTime: false});
      
      $("#statusCB").change(function () {
	    if($("#statusCB option:selected").text()=="Da"){
	    	$("#kafic").attr('disabled', false);
	    	$('#dtpDatKave').data("DateTimePicker").enable();
			$("#vrstaCB").attr('disabled', false);			
			
		}		
		else if ($("#statusCB option:selected").text()=="Ne"){
			$("#kafic").attr('disabled', true);
			$('#dtpDatKave').data("DateTimePicker").disable();
			$("#vrstaCB").attr('disabled', true);
		}
			
	});	  
	   		 
});
function formSubmit() {
	document.getElementById("logoutForm").submit();
}

</script>

<div class="panel panel-primary">
	
	<div class="panel-heading">
		<h3 class="panel-title"><strong>Dogovaranje kave</strong></h3>
	</div>
	
	<div class="panel-body">
	
	 <div class="row">
				
			 	<div class="col-md-3">
					<div class="form-group">
						<label for="status" class="control-label">Želim na kavu</label>
						<select class="form-control input-sm" id="statusCB">
							<option>Da</option>
							<option>Ne</option>
						</select>
					</div>
				</div> 
				
				<div class="col-md-3">
					<div class="form-group">
						<label for="kafic" class="control-label">Naziv kafića</label> 
						<input type="text" class="form-control input-sm" id="kafic" />
					</div>
				</div>
		 		<div class="col-md-3">
					<div class="form-group">
						<label for="dtpDatKave" class="control-label">Datum kave</label> 
						<div class="input-group date" id="dtpDatKave">
							<input type="text" data-date-format="DD.MM.YYYY" class="form-control input-sm" id="dtpDatKave" />
							<span class="input-group-addon"><span class="fa fa-calendar"></span></span> 
						</div>
					</div>
				</div>
				
				<div class="col-md-3">
					<div class="form-group">
						<label for="vrsta" class="control-label">Vrsta kave</label>
						<select class="form-control input-sm" id="vrstaCB">
							<option>Kava s mlijekom</option>
							<option>Bijela kava</option>
							<option>Turska kava</option>
						</select>
					</div>
				</div> 
	</div> 
	<c:url value="/j_spring_security_logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
	</form>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
			<h2>
				User : ${pageContext.request.userPrincipal.name} | <a
					href="javascript:formSubmit()"> Logout</a>
			</h2>
		</c:if>
	
</div>
	
</div>

